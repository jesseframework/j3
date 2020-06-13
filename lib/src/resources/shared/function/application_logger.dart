import 'package:j3enterprise/src/database/crud/application_logger/app_logger_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:moor/moor.dart';

class AppLogger {
  ApplicationLoggerDao applicationLoggerDao;
  var db;
  AppLogger() {
    db = AppDatabase();
    applicationLoggerDao = ApplicationLoggerDao(db);
  }

  Future<void> saveAppLog(
      String functionName,
      DateTime startDateTime,
      String syncFrequency,
      String logDescription,
      String documentNo,
      String logCode,
      String logSeverity,
      int createUserId,
      DateTime creationTime,
      DateTime deleteTime,
      int deleteUserId,
      String creatorUser,
      String deleterUserId,
      bool isDeleted,
      String lastModifierUser,
      int lastModifierUserId,
      DateTime exportDateTime,
      String exportStatus,
      DateTime importDateTime,
      String importStatus,
      String syncError,
      int tenantId,
      String uerName,
      int userId) async {
    var logData = new ApplicationLoggerCompanion(
        startDateTime: Value(startDateTime),
        functionName: Value(functionName),
        syncFrequency: Value(syncFrequency),
        logDescription: Value(logDescription),
        documentNo: Value(documentNo),
        logCode: Value(logCode),
        logSeverity: Value(logSeverity),
        createUserId: Value(createUserId),
        creationTime: Value(creationTime),
        deleteTime: Value(deleteTime),
        deleterUserId: Value(deleterUserId),
        isDeleted: Value(isDeleted),
        lastModifierUser: Value(lastModifierUser),
        lastModifierUserId: Value(lastModifierUserId),
        exportDateTime: Value(exportDateTime),
        exportStatus: Value(exportStatus),
        importDateTime: Value(importDateTime),
        importStatus: Value(importStatus),
        syncError: Value(syncError),
        tenantId: Value(tenantId),
        userId: Value(userId));

    await applicationLoggerDao.insertAppLog(logData);
  }
}
