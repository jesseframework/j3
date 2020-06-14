import 'dart:io' show Platform;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/communication/communication_setup_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/non_preference_crud.dart';
import 'package:j3enterprise/src/database/crud/prefrence/preference_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/services/bloc_deligate.dart';
import 'package:j3enterprise/src/resources/services/firebase_notification_service.dart';
import 'package:j3enterprise/src/resources/shared/function/application_logger.dart';
import 'package:logging/logging.dart';

class InitServiceSetup {
  var db;
  PreferenceDao preferenceDao;
  NonGlobalSettingDao nonGlobalSettingDao;
  UserRepository userRepository;
  AppLogger appLogger;
  Map<String, String> mapDevicePref = Map();
  InitServiceSetup() {
    db = AppDatabase();
    appLogger = new AppLogger();
    preferenceDao = new PreferenceDao(db);
    nonGlobalSettingDao = new NonGlobalSettingDao(db);
    userRepository = new UserRepository();
  }
  void _setupLogging() async {
    mapDevicePref = await userRepository.getUserSharedPref();
    String userName = mapDevicePref['userName'];
    String deviceID = mapDevicePref['deviceID'];
    String screen = mapDevicePref['screen'];

    //Turn on/off logs. Default value yes isGlobal no
    var saveLogToDd = await preferenceDao.getSinglePreferences('LOGGERON');
    if (saveLogToDd != null) {
      if (saveLogToDd.value == "Yes" &&
          saveLogToDd.isGlobal == false &&
          (saveLogToDd.expiredDateTime.isBefore(DateTime.now()) ||
              saveLogToDd.expiredDateTime == null)) {
        var nonGlobalDb = await nonGlobalSettingDao.getSingleNonGlobalPref(
            'LOGGERON', 'LOGGERON', userName, deviceID, screen);
        if (nonGlobalDb != null &&
            nonGlobalDb.value == "Yes" &&
            nonGlobalDb.isApply == true) {
          //Set not global
          if (nonGlobalDb.expiredDateTime.isBefore(DateTime.now()) ||
              nonGlobalDb.expiredDateTime == null) {
            var setLogLevel = await nonGlobalSettingDao.getSingleNonGlobalPref(
                'LOGGERLEVEL', 'LOGGERLEVEL', userName, deviceID, screen);
            if (setLogLevel != null) {
              await logLevelCheck(setLogLevel.value);
            }
          }
        }
      } else {
        var setLogLevel =
            await preferenceDao.getSinglePreferences('LOGGERLEVEL');
        if (setLogLevel != null) {
          await logLevelCheck(setLogLevel.value);
        }
      }
    } else {
      //Set Default
      Logger.root.level = Level.ALL;
    }

    Logger.root.onRecord.listen((rec) async {
      print(
          '${rec.loggerName} : ${rec.level.name}: ${rec.time} : ${rec.message} ');

      await appLogger.saveAppLog(rec.loggerName, rec.time, "NA", rec.message,
          "NA", "NA", "NA", rec.level.name, 0, "NA", 0);
    });
  }

  Future<void> initServices() async {
    _setupLogging();
    BlocSupervisor.delegate = SimpleBlocDelegate();
    var dao = CommunicationDao(AppDatabase());
    var communicationData = await dao.getCommunicationDataByType("API");
    var serverUrl = communicationData == null || communicationData.isEmpty
        ? ApiClient.URL
        : communicationData[0].serverUrl;
    ApiClient.updateClient(serverUrl);
    if (!Platform.isWindows && !Platform.isMacOS) {
      FirebaseNotificationService.instance;
    }
  }

  Future<void> logLevelCheck(String logLevel) async {
    if (logLevel == 'SEVERE') {
      Logger.root.level = Level.SEVERE;
    }
    if (logLevel == 'INFO') {
      Logger.root.level = Level.INFO;
    }

    if (logLevel == 'WARNING') {
      Logger.root.level = Level.WARNING;
    }

    if (logLevel == 'SHOUT') {
      Logger.root.level = Level.SHOUT;
    }
    if (logLevel == 'FINE') {
      Logger.root.level = Level.FINE;
    }
    if (logLevel == 'FINEST') {
      Logger.root.level = Level.FINEST;
    }

    if (logLevel == 'OFF') {
      Logger.root.level = Level.OFF;
    }
    if (logLevel == 'ALL') {
      Logger.root.level = Level.ALL;
    }
  }
}
