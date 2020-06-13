import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:moor/moor.dart';

class AppLogger {
  ApplicationLoggerDao applicationLoggerDao;
  AppLoggerRepository appLoggerRepository;
  var db;
  AppLogger() {
    appLoggerRepository = new AppLoggerRepository();
    db = AppDatabase();
    applicationLoggerDao = ApplicationLoggerDao(db);
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
      //print(applicationLoggerDao.getAllAppLog());
      await applicationLoggerDao.insertAppLog(logData);

      final Response logShipResponse =
          await appLoggerRepository.putAppLogOnServer(
              functionName: functionName,
              logDateTime: logDateTime,
              syncFrequency: syncFrequency,
              logDescription: logDescription,
              documentNo: logDescription,
              logCode: logCode,
              logSeverity: logSeverity,
              deviceID: deviceId);
      Map<String, dynamic> logMap = json.decode(logShipResponse.bodyString);
      if (logShipResponse.isSuccessful && logMap['success']) {
        Map<String, dynamic> logShipResult = logMap['result'];
        //ToDo Allow Server Log when post to return True

        await applicationLoggerDao.deleteAppLog(logData);
      }
    } catch (error) {}
  }
}
