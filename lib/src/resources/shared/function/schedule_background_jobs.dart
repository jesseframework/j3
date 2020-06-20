import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:logging/logging.dart';

///This code will allow user to set the frequency of code run in background job.
///Once enable dart timer will execute API call and updat date base base on timer.
///For more information on dart timer go to https://stackoverflow.com/questions/14946012/how-do-i-run-a-reoccurring-function-in-dart

class TimerData {
  final String name;
  final Timer timer;
  TimerData({@required this.name, @required this.timer});
}

class Scheduleler {
  static final _log = Logger('Scheduleler');

  List<TimerData> timers = [];

  void cancel(String jobName) {
    var x = timers.firstWhere((element) => element.name == jobName);
    if (x != null) {
      x.timer.cancel();
      timers.remove(x);
    }
  }

  Duration _getFromString(String setFrequency) {
    if (setFrequency == "Every Minet")
      return Duration(minutes: 1);
    else if (setFrequency == "Every 5 Minutes")
      return Duration(minutes: 5);
    else if (setFrequency == "Every 20 Minutes")
      return Duration(minutes: 20);
    else if (setFrequency == "Every Day")
      return Duration(days: 1);
    else if (setFrequency == "Every Month")
      return Duration(days: 28);
    else if (setFrequency == "Every Year") return Duration(days: 365);
    return null;
  }

  Future<void> scheduleJobs(
      String setFrequency, String jobName, Function(Timer) callback) async {
    var duration = _getFromString(setFrequency);

    if (duration == null) return;

    timers.add(new TimerData(
        name: jobName, timer: Timer.periodic(duration, callback)));
  }

  Future<void> runNowJobs(
      String setFrequency, String jobName, Function(Timer) callback) async {
    var duration = _getFromString(setFrequency);
    if (duration == null) return;

    timers.add(
        new TimerData(name: jobName, timer: Timer(duration, () => callback)));
  }
}

Future<void> syncClickleScheduler() async {
  var db;
  db = AppDatabase();
  BackgroundJobScheduleDao backgroundJobScheduleDao =
      new BackgroundJobScheduleDao(db);
  AppLoggerRepository appLoggerRepository = new AppLoggerRepository();
  Scheduleler scheduleler = new Scheduleler();
  var jobData = await backgroundJobScheduleDao.getAllJobs();
  for (var eachJob in jobData) {
    scheduleler.runNowJobs(
        eachJob.syncFrequency,
        eachJob.jobName,
        (Timer timer) =>
            appLoggerRepository.putAppLogOnServer(eachJob.jobName));

            
  }
}

Future<void> syncClickCancel() async {
  var db;
  db = AppDatabase();
  BackgroundJobScheduleDao backgroundJobScheduleDao =
      new BackgroundJobScheduleDao(db);

  Scheduleler scheduleler = new Scheduleler();
  var jobData = await backgroundJobScheduleDao.getAllJobs();
  for (var eachJob in jobData) {
    
    scheduleler.cancel(eachJob.jobName);
  }
}
