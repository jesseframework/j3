import 'dart:async';

import 'package:chopper/chopper.dart';

///This code will allow user to set the frequency of code run in background job.
///Once enable dart timer will execute API call and updat date base base on timer.
///For more information on dart timer go to https://stackoverflow.com/questions/14946012/how-do-i-run-a-reoccurring-function-in-dart

Future<int> syncfrequency(String setFrequency, Future callback) async {
  int timeSet;
  if (setFrequency == "Every Minet") {
    const oneSec = const Duration(seconds: 60);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  if (setFrequency == "Every 5 Minutes") {
    const oneSec = const Duration(minutes: 5);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  if (setFrequency == "Every 20 Minutes") {
    const oneSec = const Duration(minutes: 20);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  if (setFrequency == "Every Day") {
    const oneSec = const Duration(days: 1);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  if (setFrequency == "Every Month") {
    const oneSec = const Duration(days: 30);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  if (setFrequency == "Every Year") {
    const oneSec = const Duration(days: 365);
    new Timer.periodic(oneSec, (Timer t) async => callback);
  }

  return timeSet;
}
