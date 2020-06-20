import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';

import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/function/update_backgroung_job_schedule_status.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart' as moor;

import 'package:shared_preferences/shared_preferences.dart';

class AppLoggerRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;

  static final _log = Logger('AppLogger');
  ApplicationLoggerDao applicationLoggerDao;
  UpdateBackgroungJobStatus updateBackgroungJobStatus;
  BackgroundJobScheduleDao backgroundJobScheduleDao;

  AppLoggerRepository() {
    db = AppDatabase();
    applicationLoggerDao = new ApplicationLoggerDao(db);
    updateBackgroungJobStatus = new UpdateBackgroungJobStatus();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
  }

  Future<void> setDeviceIntoSharedPref(String deviceId, String state) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('state', state);
    return;
  }

  //Get data from log

  Future<void> putAppLogOnServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in datbase
      var isscheduleenable = await backgroundJobScheduleDao.getJob(jobName);
      if (isscheduleenable != null) {
        DateTime startDate = isscheduleenable.startDateTime;
        DateTime currentDate = DateTime.now();
        _log.finest(
            'Start Date $startDate found in job schedular to compare with currenct date $currentDate using isAfter');
        if (isscheduleenable.startDateTime.isBefore(DateTime.now())) {
          _log.finest('$jobName found in job schedular');
          if (isscheduleenable.enableJob == true) {
            _log.finest('$jobName is enable');
           await updateBackgroungJobStatus.updateJobStatus(jobName, "In Progress");
            var appLogData = await applicationLoggerDao.getAppLog("Pending");
            for (var fromDb in appLogData) {
              String formatted =
                  await formatDate(fromDb.logDateTime.toString());

              final Response response = await api.mobileAppLogger({
                "functionName": fromDb.functionName,
                "logDateTime": formatted,
                "syncFrequency": fromDb.syncFrequency,
                "logDescription": fromDb.logDescription,
                "documentNo": fromDb.documentNo,
                "logCode": fromDb.logCode,
                "logSeverity": fromDb.logSeverity,
                "deviceID": fromDb.deviceId
              });
              Map<String, dynamic> map = json.decode(response.bodyString);
              if (response.isSuccessful && map['success']) {
                //decode the response body
                _log.finest('API response is successful $map');
               await updateBackgroungJobStatus.updateJobStatus(jobName, "Success");

                _log.finest('$jobName mark as export');
                var fromDate = new ApplicationLoggerData(
                    id: fromDb.id,
                    functionName: fromDb.functionName,
                    logDateTime: fromDb.logDateTime,
                    syncFrequency: fromDb.syncFrequency,
                    logDescription: fromDb.logDescription,
                    documentNo: fromDb.documentNo,
                    deviceId: fromDb.deviceId,
                    logCode: fromDb.logCode,
                    logSeverity: fromDb.logSeverity,
                    exportStatus: "Success",
                    exportDateTime: DateTime.now());

                await applicationLoggerDao.updateAppLoggerReplace(fromDate);

                _log.finest('$jobName purging');

                await applicationLoggerDao.deleteById(fromDate.id);
              } else {
                _log.info('API response error');
                updateBackgroungJobStatus.updateJobStatus(jobName, "Error");
                break;
                //Timer(Duration(seconds: 60), () => print('done')).cancel();
              }
            }
          }
        }
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
    }
  }
}
