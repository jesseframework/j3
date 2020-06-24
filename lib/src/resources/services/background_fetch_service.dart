import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:background_fetch/background_fetch.dart';

const EVENTS_KEY = "fetch_events";

// This "Headless Task" is run when app is terminated.
void backgroundFetchHeadlessTask(String taskId) async {
  print("[BackgroundFetch] Headless event received: $taskId");
  DateTime timestamp = DateTime.now();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Read fetch_events from SharedPreferences
  List<String> events = [];
  String json = prefs.getString(EVENTS_KEY);
  if (json != null) {
    events = jsonDecode(json).cast<String>();

  }
  // Add new event.
  events.insert(0, "$taskId@$timestamp [Headless]");
  // Persist fetch events in SharedPreferences
  prefs.setString(EVENTS_KEY, jsonEncode(events));

  BackgroundFetch.finish(taskId);

  if (taskId == 'flutter_background_fetch') {
    BackgroundFetch.scheduleTask(TaskConfig(
        taskId: "com.transistorsoft.customtask",
        delay: 5000,
        periodic: false,
        forceAlarmManager: true,
        stopOnTerminate: false,
        enableHeadless: true
    ));
  }
}
