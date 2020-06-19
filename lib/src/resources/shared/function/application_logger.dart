import 'dart:async';

import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/ui/login/bloc/login_bloc.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart';

class AppLogger {
  ApplicationLoggerDao applicationLoggerDao;
  AppLoggerRepository appLoggerRepository;
 

  LoginState loginState;

  var db;
  static final _log = Logger('AppLogger');

  AppLogger() {
    //assert(appLoggerRepository != null);
    db = AppDatabase();
    applicationLoggerDao = ApplicationLoggerDao(db);
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

      await applicationLoggerDao.insertAppLog(logData);
    } catch (error) {
      _log.shout(error, StackTrace.current);
    }
  }
}
