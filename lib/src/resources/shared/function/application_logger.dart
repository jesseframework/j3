import 'dart:async';

import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/shared/preferences/user_share_data.dart';
import 'package:j3enterprise/src/ui/login/bloc/login_bloc.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart';

class AppLogger {
  ApplicationLoggerDao applicationLoggerDao;
  AppLoggerRepository appLoggerRepository;
  PreferenceDao preferenceDao;
  NonGlobalSettingDao nonGlobalSettingDao;
  UserSharedData userSharedData;
  Map<String, String> mapDevicePref = Map();

  LoginState loginState;

  var db;
  static final _log = Logger('AppLogger');

  AppLogger() {
    //assert(appLoggerRepository != null);
    db = AppDatabase();
    applicationLoggerDao = ApplicationLoggerDao(db);
    preferenceDao = PreferenceDao(db);
    nonGlobalSettingDao = NonGlobalSettingDao(db);
    userSharedData = new UserSharedData();
    appLoggerRepository = new AppLoggerRepository();
  }

  //ToDo Implement connectivity and batry setting for saving log to server. Server setting must be set to allow for log save over wify and log battery

  Future<void> saveAppLog(
      String functionName,
      DateTime logDateTime,
      String syncFrequency,
      String logDescription,
      String documentNo,
      String deviceId,
      String logCode,
      String logSeverity,
      int tenantId,
      String uerName,
      int userId) async {
    try {
      mapDevicePref = await userSharedData.getUserSharedPref();
      String userName = mapDevicePref['userName'];
      String deviceId = mapDevicePref['deviceID'];
      String screen = mapDevicePref['screen'];

      var logData = new ApplicationLoggerCompanion(
          logDateTime: Value(logDateTime),
          functionName: Value(functionName),
          syncFrequency: Value(syncFrequency),
          logDescription: Value(logDescription),
          documentNo: Value(documentNo),
          deviceId: Value(deviceId),
          logCode: Value(logCode),
          logSeverity: Value(logSeverity),
          exportDateTime: Value(DateTime.now()),
          exportStatus: Value("Pending"),
          syncError: Value(""),
          tenantId: Value(tenantId),
          userId: Value(userId));

      _log.info('Inserting logs to database');

      await applicationLoggerDao.insertAppLog(logData);

      var logPurging = await preferenceDao.getSinglePreferences('LOGGERPURGE');
      if (logPurging != null) {
        _log.info('log purge enable');
        if (logPurging.value == "After Upload") {
          if (logPurging.isGlobal == false) {
            _log.info('After Upload log purger is enable for non global');
            var globalData = await nonGlobalSettingDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                await applicationLoggerDao.purgeDatabyExportStatus('Success');
                _log.info('After Upload logs deleted before expiration date');
              }
            }
          } else {
            await applicationLoggerDao.purgeDatabyExportStatus('Success');
            _log.info('After Upload global log purger successfull');
          }
        }

        if (logPurging.value == "Last 1000") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalSettingDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                _log.info('1000 log puge for non global setting');
                await applicationLoggerDao.purgeData(1000);
              }
            }
          } else {
            _log.info('1000 log puge for global setting');
            await applicationLoggerDao.purgeData(1000);
          }
        }

        if (logPurging.value == "Last 500") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalSettingDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              _log.info('500 log puge for non global setting');
              await applicationLoggerDao.purgeData(1000);
            }
          } else {
            _log.info('500 log puge for global setting');
            await applicationLoggerDao.purgeData(1000);
          }
        }

        if (logPurging.value == "Last 100") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalSettingDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                _log.info(
                    '100 log puge for non global setting before expiration');
                await applicationLoggerDao.purgeData(100);
              }
            }
          } else {
            _log.info('100 log puge for global setting');
            await applicationLoggerDao.purgeData(100);
          }
        }
      } else {
        _log.info('log purge not enable using default log purge of 1000 logs');
        await applicationLoggerDao.purgeData(1000);
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
    }
  }
}
