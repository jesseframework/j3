import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/function/update_backgroung_job_schedule_status.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:logging/logging.dart';

class PreferenceRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;

  static final _log = Logger('PreferenceRepository');
  UpdateBackgroundJobStatus updateBackgroundJobStatus;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  PreferenceDao preferenceDao;
  NonGlobalPreferenceDao nonGlobalPreferenceDao;

  UserSharedData userSharedData;

  PreferenceRepository() {
    db = AppDatabase();
    updateBackgroundJobStatus = new UpdateBackgroundJobStatus();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    preferenceDao = PreferenceDao(db);
    nonGlobalPreferenceDao = NonGlobalPreferenceDao(db);
    userSharedData = new UserSharedData();
  }

  Future<void> getPreferenceFromServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in database
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            Map<String, String> mapUserSharedData = Map();
            UserSharedData userSharedData = new UserSharedData();
            mapUserSharedData = await userSharedData.getUserSharedPref();
            String _tenantId = mapUserSharedData['tenantId'];
            String userName = mapUserSharedData['userName'];
            String deviceId = mapUserSharedData['deviceId'];

            final Response response = await api.getPreference();
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              Map<String, dynamic> result = map['result'];
              var items = (result['items'] as List).map((e) {
                var myDate = DateTime.parse(e["expiredDateTime"]);
                print(myDate);
                return PreferenceData.fromJson(e);
              });
              //List<Map<String, dynamic>> records = result['items'];
              for (var item in items) {
                //var getData = PreferenceData.fromJson(item);
                await preferenceDao.createOrUpdatePref(item);
              }

//              for (var fromDb in result){
//
//
//              }
//              var data = PreferenceCompanion(
//                id: moor.Value(result['id']),
//                code: moor.Value(result['code']),
//                preferenceName: moor.Value(result['preferenceName']),
//                description: moor.Value(result['description']),
//                value: moor.Value(result['value']),
//                domain: moor.Value(result['domain']),
//                isGlobal: moor.Value(result['isGlobal']),
//                expiredDateTime: moor.Value(result['expiredDateTime']),
//              );

              //Map<String, dynamic> items = result['items'];

              //var data = PreferenceData.fromJson(result);

            } else {
              updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
            }
          }
        }
      }
    } catch (error) {
      updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
      _log.shout(error, StackTrace.current);
    }
  }
}
