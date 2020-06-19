import 'dart:async';

import 'package:flutter/cupertino.dart';

///This code will allow user to set the frequency of code run in background job.
///Once enable dart timer will execute API call and updat date base base on timer.
///For more information on dart timer go to https://stackoverflow.com/questions/14946012/how-do-i-run-a-reoccurring-function-in-dart

class TimerData {
  final String name;
  final Timer timer;
  TimerData({@required this.name, @required this.timer});
}

class Scheduleler {
  //Timer timer;
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
}


