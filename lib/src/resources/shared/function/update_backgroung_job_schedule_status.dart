import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:moor/moor.dart' as moor;

class UpdateBackgroundJobStatus {
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  var db;
  UpdateBackgroundJobStatus() {
    db = AppDatabase();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
  }

  Future<void> updateJobStatus(String jobName, String jobStatus) async {
    String formatted = await formatDate(DateTime.now().toString());

    var fromData = new BackgroundJobScheduleCompanion(
        jobStatus: moor.Value(jobStatus),
        lastRun: moor.Value(DateTime.tryParse(formatted)));

    await backgroundJobScheduleDao.updateBackgroundJobStstus(
        fromData, jobName, DateTime.now());
  }
}
