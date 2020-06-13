import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/application_logger_model.dart';
import 'package:moor/moor.dart';

part 'app_logger_crud.g.dart';

@UseDao(tables: [ApplicationLogger])
class ApplicationLoggerDao extends DatabaseAccessor<AppDatabase>
    with _$ApplicationLoggerDaoMixin {
  final AppDatabase db;
  ApplicationLoggerDao(this.db) : super(db);

  Future<List<ApplicationLoggerData>> getAllAppLog() {
    return (select(db.applicationLogger).get());
  }

  Stream<List<ApplicationLoggerData>> watchAllAppLog() {
    return (select(db.applicationLogger).watch());
  }

  Future insertAppLog(ApplicationLoggerCompanion applicationLoggerData) =>
      into(db.applicationLogger).insert(applicationLoggerData);

  Future deleteAllAppLog() => delete(db.applicationLogger).go();
}
