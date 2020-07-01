import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/background_jobs_logs_model.dart';
import 'package:moor/moor.dart';

part 'backgroundjob_logs_crud.g.dart';

@UseDao(tables: [BackgroundJobLogs])
class BackgroundJobLogsDao extends DatabaseAccessor<AppDatabase>
    with _$BackgroundJobLogsDaoMixin {
  final AppDatabase db;
  BackgroundJobLogsDao(this.db) : super(db);

  Future<List<BackgroundJobLog>> getAllJobsLog() {
    return (select(db.backgroundJobLogs).get());
  }

  Stream<List<BackgroundJobLog>> watchAllJobsLog() {
    return (select(db.backgroundJobLogs).watch());
  }

  

  Future insertJobLog(BackgroundJobLog backgroundJoblog) =>
      into(db.backgroundJobLogs).insert(backgroundJoblog);

  Future updateBackgroundJobLog(BackgroundJobLog backgroundJoblog) =>
      update(db.backgroundJobLogs).replace(backgroundJoblog);

  //Wipe backgroun job table
  Future deleteAllBackgroundJobsLog() => delete(db.backgroundJobLogs).go();
}
