import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void ShowSnakBar(String title, detail) {
  showSimpleNotification(Text(title), position: NotificationPosition.bottom, );
}
