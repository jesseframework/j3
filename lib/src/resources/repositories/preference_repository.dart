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
import 'package:j3enterprise/src/resources/shared/utils/customer_date_json_serializer.dart';
import 'package:logging/logging.dart';

class PreferenceRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;

  bool isStopped = false;

  static final _log = Logger('PreferenceRepository');
  UpdateBackgroundJobStatus updateBackgroundJobStatus;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  PreferenceDao preferenceDao;
  NonGlobalPreferenceDao nonGlobalPreferenceDao;

  UserSharedData userSharedData;

  PreferenceRepository() {
    _log.finest("Preference repository constructer call");
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
      _log.finest("Executing preference date from server");
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        _log.finest("Preference job found in background Jobs scheduler");
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            DateTime startDate = isSchedulerEnable.startDateTime;
            _log.finest("Preference jobs start date is $startDate ");
            final Response response = await api.getPreference();
            _log.finest("Checking server resopnses for preference ");
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              _log.finest("Server resopnses successful for preference ");
              Map<String, dynamic> result = map['result'];
              var items = (result['items'] as List).map((e) {
                return PreferenceData.fromJson(e,
                    serializer: CustomSerializer());
              });

              for (var item in items) {
                if (isStopped) break;
                await preferenceDao.createOrUpdatePref(item);
              }
              updateBackgroundJobStatus.updateJobStatus(jobName, "Success");
            } else {
              String error = map["error"]["details"].toString();
              updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
              _log.shout(
                  "Preference API call failed. Server respond with error : $error  ");
            }
          }
        }
      }
    } catch (e) {
      updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
      _log.shout(e, StackTrace.current);
    }
  }

  Future<void> getNonGlobalPrefFromServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in database
      _log.finest("Executing Non Global preference date from server");
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        _log.finest(
            "Non Global Preference job found in background Jobs scheduler");
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            DateTime startDate = isSchedulerEnable.startDateTime;
            _log.finest("Non Global Preference jobs start date is $startDate ");
            final Response response = await api.getNonGlobalPreference();
            _log.finest("Checking server resopnses for Non global preference ");
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              _log.finest(
                  "Server resopnses successful for non global preference ");
              Map<String, dynamic> result = map['result'];
              var items = (result['items'] as List).map((e) {
                return NonGlobalPreferenceData.fromJson(e,
                    serializer: CustomSerializer());
              });

              for (var item in items) {
                if (isStopped) break;
                await nonGlobalPreferenceDao.createOrUpdatePref(item);
              }
              updateBackgroundJobStatus.updateJobStatus(jobName, "Success");
            } else {
              String error = map["error"]["details"].toString();
              updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
              _log.shout(
                  "Non Global Preference API call failed. Server respond with error: $error ");
            }
          }
        }
      }
    } catch (e) {
      updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
      _log.shout(e, StackTrace.current);
    }
  }
}
