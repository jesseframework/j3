/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with Jesseframework.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * AppLogger record all logs from flutter logger.root. This control by loglevel in J3 profrence.
 * This class will be call by other report to log perform loging application. Logs can also be ship to server using log ship job.
  * Dependency implement:
 *  - Connectivity - Check Internet connection and login user offline if no internet
 *  - Logger - Log all code interaction with UI. This is depended on log level
 *  - Flutter_Bloc - Main state managemeng solution. for more information on flutter_bloc see http://pub.dev
 *  - Chopper - API integration for ABP
 *  - Shared Prefrence - Store user data for API call
 *  - Moor_ff
 */
/*
 * WARNING!! - Dont not add flutter logger to saveAppLog Future. This will put the apploger in loop and prevent loging.
 */

import 'dart:async' show Future;

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
  NonGlobalPreferenceDao nonGlobalPreferenceDao;
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
    nonGlobalPreferenceDao = NonGlobalPreferenceDao(db);
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
      String userName,
      int userId) async {
    try {
      mapDevicePref = await userSharedData.getUserSharedPref();
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

      //ToDo add dlay start to future

      await applicationLoggerDao.insertAppLog(logData);

      var logPurging = await preferenceDao.getSinglePreferences('LOGGERPURGE');
      if (logPurging != null) {
        if (logPurging.value == "After Upload") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalPreferenceDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                //applicationLoggerDao.purgeDatabyExportStatus('Success');
              }
            }
          } else {
            //applicationLoggerDao.purgeDatabyExportStatus('Success');
          }
        }

        if (logPurging.value == "Last 1000") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalPreferenceDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                //applicationLoggerDao.purgeData(1000);
              }
            }
          } else {
            //applicationLoggerDao.purgeData(1000);
          }
        }

        if (logPurging.value == "Last 500") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalPreferenceDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              //applicationLoggerDao.purgeData(500);
            }
          } else {
            //applicationLoggerDao.purgeData(500);
          }
        }

        if (logPurging.value == "Last 100") {
          if (logPurging.isGlobal == false) {
            var globalData = await nonGlobalPreferenceDao.getSingleNonGlobalPref(
                logPurging.code, logPurging.code, userName, deviceId, screen);
            if (globalData != null) {
              if (globalData.expiredDateTime.isBefore(DateTime.now())) {
                //applicationLoggerDao.purgeData(100);
              }
            }
          } else {
            //applicationLoggerDao.purgeData(100);
          }
        }
      } else {
        //int count = 1000;

        //applicationLoggerDao.purgeData(1000);
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
    }
  }
}
