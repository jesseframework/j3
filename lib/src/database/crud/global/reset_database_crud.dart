import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_logs_crud.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/business_rule/business_rule_crud.dart';
import 'package:j3enterprise/src/database/crud/communication/communication_setup_crud.dart';
import 'package:j3enterprise/src/database/crud/mobile_device/mobile_device_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/crud/tenant/tenant_crud.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';

class ResetDatabase {
  UserDao userDao;
  CommunicationDao communicationDao;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  BackgroundJobLogsDao backgroundJobLogsDao;
  ApplicationLoggerDao applicationLoggerDao;
  MobileDeviceDao mobileDeviceDao;
  PreferenceDao preferencesDao;
  BusinessRuleDao businessRuleDao;
  TenantDao tenantDao;
  var db;

  ResetDatabase(
      {this.userDao,
      this.communicationDao,
      this.backgroundJobLogsDao,
      this.backgroundJobScheduleDao,
      this.applicationLoggerDao,
      this.tenantDao,
      this.businessRuleDao,
      this.preferencesDao,
      this.mobileDeviceDao}) {
    db = AppDatabase();
    userDao = UserDao(db);
    communicationDao = CommunicationDao(db);
    backgroundJobScheduleDao = BackgroundJobScheduleDao(db);
    backgroundJobLogsDao = BackgroundJobLogsDao(db);
    applicationLoggerDao = ApplicationLoggerDao(db);
    tenantDao = TenantDao(db);
    businessRuleDao = BusinessRuleDao(db);
    preferencesDao = PreferenceDao(db);
    mobileDeviceDao = MobileDeviceDao(db);
  }

  Future<void> resetAllData() async {
    await userDao.deleteAllUser();
    await communicationDao.deleteAllCommuniction();
    await backgroundJobLogsDao.deleteAllBackgroundJobsLog();
    await backgroundJobScheduleDao.deleteBackgroundJobs();
    await applicationLoggerDao.deleteAllAppLog();
    await tenantDao.deleteAllTenant();
    await businessRuleDao.deleteAllBusinessRule();
    await preferencesDao.deleteAllPreferences();
    await mobileDeviceDao.deleteAllBusinessRule();
  }
}
