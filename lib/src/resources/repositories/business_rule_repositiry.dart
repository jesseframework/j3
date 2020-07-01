import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/business_rule/business_rule_crud.dart';
import 'package:j3enterprise/src/database/crud/business_rule/non_global_business_rule_crud.dart';

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:j3enterprise/src/resources/shared/function/update_backgroung_job_schedule_status.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:j3enterprise/src/resources/shared/utils/customer_date_json_serializer.dart';
import 'package:logging/logging.dart';

class BusinessRuleRepository {
  var api = ApiClient.chopper.getService<RestApiService>();
  var db;

  static final _log = Logger('PreferenceRepository');
  UpdateBackgroundJobStatus updateBackgroundJobStatus;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  NonGlobalBusinessRuleDao nonGlobalBusinessRuleDao;
  BusinessRuleDao businessRuleDao;
  UserSharedData userSharedData;

  BusinessRuleRepository() {
    db = AppDatabase();
    updateBackgroundJobStatus = new UpdateBackgroundJobStatus();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    nonGlobalBusinessRuleDao = NonGlobalBusinessRuleDao(db);
    userSharedData = new UserSharedData();
  }

  Future<void> getBusinessRuleFromServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in database
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            final Response response = await api.getBusinessRule();
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              Map<String, dynamic> result = map['result'];
              var items = (result['items'] as List).map((e) {
                return BusinessRuleData.fromJson(e,
                    serializer: CustomSerializer());
              });

              for (var item in items) {
                await businessRuleDao.createOrUpdatePref(item);
              }
            } else {
              updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
            }
          }
        }
      }
    } catch (e) {
      updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
      _log.shout(e, StackTrace.current);
    }
  }

  Future<void> getNonGlobalBusinessRuleFromServer(String jobName) async {
    try {
      //ToDo code review to get a better way to push bulk data to API and update bulk data in database
      var isSchedulerEnable = await backgroundJobScheduleDao.getJob(jobName);
      if (isSchedulerEnable != null) {
        if (isSchedulerEnable.startDateTime.isBefore(DateTime.now())) {
          if (isSchedulerEnable.enableJob == true) {
            final Response response = await api.getNonGlobalBusinessRule();
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              Map<String, dynamic> result = map['result'];
              var items = (result['items'] as List).map((e) {
                return NonGlobalBusinessRuleData.fromJson(e,
                    serializer: CustomSerializer());
              });

              for (var item in items) {
                await nonGlobalBusinessRuleDao.createOrUpdatePref(item);
              }
            } else {
              updateBackgroundJobStatus.updateJobStatus(jobName, "Error");
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
