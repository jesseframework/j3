/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:j3enterprise/src/resources/services/message_stream.dart';

class FirebaseNotificationService {
  FirebaseNotificationService._internal() {
    // save the client so that it can be used else where
    _firebaseMessaging = FirebaseMessaging();
    // setup listeners
    firebaseCloudMessagingListeners();
  }

  static final FirebaseNotificationService _instance =
      FirebaseNotificationService._internal();

  static FirebaseNotificationService get instance {
    return _instance;
  }

  //Api api = Api.instance;

  // get the message stream
  MessageStream _messageStream = MessageStream.instance;
  FirebaseMessaging _firebaseMessaging;
  // getter for firebase messaging client
  get firebaseMessaging => _firebaseMessaging;

  // method for getting the messaging token
  void sendDeviceToken() {
    _firebaseMessaging.getToken().then((token) {
      print("MESSAGING TOKEN: " + token);
      //api.sendDeviceToken(token: token);
    });
  }

  void firebaseCloudMessagingListeners() async {
    if (Platform.isIOS) {
      getIOSPermission();
    }

    _firebaseMessaging.configure(
      // onBackgroundMessage: (Map<String, dynamic> message) {
      //   _messageStream.addMessage(message);
      // },
      onMessage: (Map<String, dynamic> message) async {
        print('on message $message');
        //add message to stream
        _messageStream.addMessage(message);
        //_serialiseAndNavigate(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
        _messageStream.addMessage(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        _messageStream.addMessage(message);
        // print('on launch $message');
      },
    );
  }

  void getIOSPermission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
  }
}
