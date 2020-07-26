import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/background_job_schedule_model.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:moor/moor.dart';
import 'package:moor/moor.dart' as moor;
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

  Future updateBackgroundJobStstus(
      BackgroundJobScheduleCompanion backgroundJobScheduleCompanion,
      String jobName,
      DateTime lastRunDate) {
    return (update(db.backgroundJobSchedule)
          ..where((t) => t.jobName.equals(jobName)))
        .write(BackgroundJobScheduleCompanion(
            jobStatus: backgroundJobScheduleCompanion.jobStatus,
            lastRun: backgroundJobScheduleCompanion.lastRun));
  }

  Future<void> insertJobs() async{
  await batch((batch) async {
    // functions in a batch don't have to be awaited - just
    // await the whole batch afterwards.
     String systemDate = await formatDate(DateTime.now().toString());
    batch.insertAll(backgroundJobSchedule, [
      BackgroundJobScheduleCompanion(
        jobName: moor.Value("Mobile Desktop"),
        syncFrequency: moor.Value("Every 20 Minutes"),
        startDateTime: moor.Value(DateTime.tryParse(systemDate)),
        enableJob: moor.Value(true),
        jobStatus: moor.Value("Never Run"),
        lastRun: moor.Value(DateTime.tryParse(systemDate))
      ),
      BackgroundJobScheduleCompanion.insert(
       jobName: "Configuration",
        syncFrequency: "Every 20 Minutes",
        startDateTime: DateTime.tryParse(systemDate),
        enableJob: moor.Value(true),
        jobStatus: "Never Run",
        lastRun: DateTime.tryParse(systemDate)
      ),
       BackgroundJobScheduleCompanion.insert(
       jobName: "Log Shipping",
        syncFrequency: "Every Day",
        startDateTime: DateTime.tryParse(systemDate),
        enableJob: moor.Value(true),
        jobStatus: "Never Run",
        lastRun: DateTime.tryParse(systemDate)
      ),
      // ...
    ]);
  });
}

  Future deleteBackgroundJobs() => delete(db.backgroundJobSchedule).go();
}
