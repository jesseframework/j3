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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/services/message_stream.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/main.dart';

class FirebaseMessageWrapper extends StatefulWidget {
  final Widget child;

  FirebaseMessageWrapper({this.child});
  @override
  _FirebaseMessageWrapperState createState() => _FirebaseMessageWrapperState();
}

class _FirebaseMessageWrapperState extends State<FirebaseMessageWrapper> {
  MessageStream _messageStream = MessageStream.instance;
  bool enableSlideOff = true;
  bool hideCloseButton = false;
  bool onlyOne = true;
  bool crossPage = true;
  int seconds = 2;
  int animationMilliseconds = 200;
  int animationReverseMilliseconds = 200;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: null,
        stream: _messageStream.messageStream,
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> message = snapshot.data;
            print('hasData');
            _serialiseAndNavigate(message, context);
            //snapshot.data.clear();
          }

          return widget.child;
        });
  }

  void _serialiseAndNavigate(Map<String, dynamic> message, context) async {
    bool hasToken = await getIt<UserRepository>().hasToken();
    Priority priority = getPriority(message['priority']);
    // if (ModalRoute.of(context).isCurrent) {
    if (hasToken) {
      print('showToast');
      BotToast.showNotification(
          crossPage: true,
          title: (_) => Text(message['notification']["title"]),
          leading: (_) => Image.asset(
                'images/logo.png',
              ),
          subtitle: (_) => Text(message['notification']["body"]),
          duration: Duration(
              seconds: priority == Priority.HIGH
                  ? double.infinity
                  : priority == Priority.MEDIUM ? 5 : 3),
          enableSlideOff: priority == Priority.HIGH ? false : true,
          dismissDirections: [DismissDirection.horizontal],
          onTap: () {
            BotToast.cleanAll();
            BlocProvider.of<AuthenticationBloc>(context).add(PushNotification(
                route: hasToken ? message['data']['view'] : 'login'));
          });
    }
  }

  Priority getPriority(priority) {
    switch (priority) {
      case 'high':
        return Priority.HIGH;
        break;
      case 'medium':
        return Priority.MEDIUM;
        break;
      case 'low':
        return Priority.LOW;
        break;
      default:
        return Priority.LOW;
        break;
    }
  }
}

enum Priority { HIGH, MEDIUM, LOW }
