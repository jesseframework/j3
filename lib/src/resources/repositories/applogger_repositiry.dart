import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/function/update_backgroung_job_schedule_status.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:logging/logging.dart';

class AppLoggerRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;
  //static bool isStopped = false;
  bool isStopped = false;

  static final _log = Logger('AppLoggerRepository');
  ApplicationLoggerDao applicationLoggerDao;
  UpdateBackgroundJobStatus updateBackgroundJobStatus;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  PreferenceDao preferenceDao;
  NonGlobalPreferenceDao nonGlobalPreferenceDao;

  UserSharedData userSharedData;

  AppLoggerRepository() {
    db = AppDatabase();
    applicationLoggerDao = new ApplicationLoggerDao(db);
    updateBackgroundJobStatus = new UpdateBackgroundJobStatus();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    preferenceDao = PreferenceDao(db);
    nonGlobalPreferenceDao = NonGlobalPreferenceDao(db);
    userSharedData = new UserSharedData();
  }

  Future putAppLogOnServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in database
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            //var appLogData = await applicationLoggerDao.getAppLog("Pending");

            Map<String, String> mapUserSharedData = Map();
            UserSharedData userSharedData = new UserSharedData();
            mapUserSharedData = await userSharedData.getUserSharedPref();
            String _tenantId = mapUserSharedData['tenantId'];
            String userName = mapUserSharedData['userName'];
            String deviceId = mapUserSharedData['deviceId'];

            var isscheduleenable =
                await backgroundJobScheduleDao.getJob(jobName);
            if (isscheduleenable != null) {
              if (isscheduleenable.startDateTime.isBefore(DateTime.now())) {
                if (isscheduleenable.enableJob == true) {
                  var appLogData =
                      await applicationLoggerDao.getAppLog("Pending");
                  if (appLogData != null) {
                    await updateBackgroundJobStatus.updateJobStatus(
                        jobName, "In Progress");
                  }
                  for (var fromDb in appLogData) {
                    if (isStopped) break;
                    await updateBackgroundJobStatus.updateJobStatus(
                        jobName, "In Progress");
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
                      "deviceID": fromDb.deviceId,
                      "tenantId": _tenantId
                    });
                    Map<String, dynamic> map = json.decode(response.bodyString);
                    if (response.isSuccessful && map['success']) {
                      //decode the response body

                      await updateBackgroundJobStatus.updateJobStatus(
                          jobName, "Success");

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

                      await applicationLoggerDao
                          .updateAppLoggerReplace(fromDate);

                      var logPurging = await preferenceDao
                          .getSinglePreferences('LOGGERPURGE');
                      if (logPurging != null) {
                        if (logPurging.value == "After Upload") {
                          if (logPurging.isGlobal == false) {
                            var globalData = await nonGlobalPreferenceDao
                                .getSingleNonGlobalPref(logPurging.code,
                                    logPurging.code, userName, deviceId, "");
                            if (globalData != null) {
                              if (globalData.expiredDateTime
                                  .isBefore(DateTime.now())) {
                                await applicationLoggerDao
                                    .deleteById(fromDate.id);
                              }
                            }
                          } else {
                            await applicationLoggerDao.deleteById(fromDate.id);
                          }
                        }
                      } else {
                        //applicationLoggerDao.purgeData(1000);
                      }
                      await updateBackgroundJobStatus.updateJobStatus(
                          jobName, "Success");
                    } else {
                      await updateBackgroundJobStatus.updateJobStatus(
                          jobName, "Error");
                           _log.shout("AppLogger API Call Failed", StackTrace.current);
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    } catch (e) {
      _log.shout(e, StackTrace.current);
      await updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
    }
  }
}
