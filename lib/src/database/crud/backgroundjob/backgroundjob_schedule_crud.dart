import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/background_job_schedule_model.dart';
import 'package:moor/moor.dart';

part 'backgroundjob_schedule_crud.g.dart';

@UseDao(tables: [BackgroundJobSchedule])
class BackgroundJobScheduleDao extends DatabaseAccessor<AppDatabase>
    with _$BackgroundJobScheduleDaoMixin {
  final AppDatabase db;
  BackgroundJobScheduleDao(this.db) : super(db);

  Future<List<BackgroundJobScheduleData>> getAllJobs() {
    return (select(db.backgroundJobSchedule).get());
  }

  Stream<List<BackgroundJobScheduleData>> watchAllJobs() {
    return (select(db.backgroundJobSchedule).watch());
  }

  Future insertJobSchudule(BackgroundJobScheduleData backgroundJobSchedule) =>
      into(db.backgroundJobSchedule).insert(backgroundJobSchedule);

  Future updateBackgroundJob(
          BackgroundJobScheduleData backgroundJobScheduleData) =>
      update(db.backgroundJobSchedule).replace(backgroundJobScheduleData);

  //Wipe backgroun job table
  Future deleteBackgroundJobs(
          BackgroundJobScheduleData backgroundJobScheduleData) =>
      delete(db.backgroundJobSchedule).delete(backgroundJobScheduleData);
}
