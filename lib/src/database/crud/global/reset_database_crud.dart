import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_logs_crud.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/communication/communication_setup_crud.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';

class ResetDatabase {
  UserDao userDao;
  CommunicationDao communicationDao;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  BackgroundJobLogsDao backgroundJobLogsDao;
  var db;

  ResetDatabase(
      {this.userDao,
      this.communicationDao,
      this.backgroundJobLogsDao,
      this.backgroundJobScheduleDao}) {
    db = AppDatabase();
    userDao = UserDao(db);
    communicationDao = CommunicationDao(db);
    backgroundJobScheduleDao = BackgroundJobScheduleDao(db);
    backgroundJobLogsDao = BackgroundJobLogsDao(db);
  }

  Future<void> resetAllData() async {
    await userDao.deleteAllUser();
    await communicationDao.deleteAllCommuniction();
    await backgroundJobLogsDao.deleteAllBackgroundJobsLog();
    await backgroundJobScheduleDao.deleteBackgroundJobs();
  }
}
