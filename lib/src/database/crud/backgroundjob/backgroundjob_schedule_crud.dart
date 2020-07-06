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

  Future<BackgroundJobScheduleData> getJob(String jobName) {
    return (select(db.backgroundJobSchedule)
          ..where((u) => u.jobName.equals(jobName)))
        .getSingle();
  }

  Stream<List<BackgroundJobScheduleData>> watchAllJobs() {
    return (select(db.backgroundJobSchedule).watch());
  }

  Future insertJobSchedule(
          BackgroundJobScheduleCompanion backgroundJobSchedule) =>
      into(db.backgroundJobSchedule).insert(backgroundJobSchedule);

  // Future updateBackgroundJob(
  //         BackgroundJobScheduleCompanion backgroundJobScheduleData) =>
  //     update(db.backgroundJobSchedule).replace(backgroundJobScheduleData);

  //Update communication
  Future updateBackgroundJob(
      BackgroundJobScheduleCompanion backgroundJobScheduleCompanion,
      String jobName) {
    return (update(db.backgroundJobSchedule)
          ..where((t) => t.jobName.equals(jobName)))
        .write(BackgroundJobScheduleCompanion(
            jobName: backgroundJobScheduleCompanion.jobName,
            startDateTime: backgroundJobScheduleCompanion.startDateTime,
            enableJob: backgroundJobScheduleCompanion.enableJob,
            syncFrequency: backgroundJobScheduleCompanion.syncFrequency,
            lastRun: backgroundJobScheduleCompanion.lastRun,
            jobStatus: backgroundJobScheduleCompanion.jobStatus));
  }

  Future updateBackgroundJobStatus(
      BackgroundJobScheduleCompanion backgroundJobScheduleCompanion,
      String jobName,
      DateTime lastRunDate) {
    return (update(db.backgroundJobSchedule)
          ..where((t) => t.jobName.equals(jobName)))
        .write(BackgroundJobScheduleCompanion(
            jobStatus: backgroundJobScheduleCompanion.jobStatus,
            lastRun: backgroundJobScheduleCompanion.lastRun));
  }

  Future deleteBackgroundJobs() => delete(db.backgroundJobSchedule).go();
}
