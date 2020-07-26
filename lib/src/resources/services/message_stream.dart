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


import 'dart:async';
import 'package:rxdart/rxdart.dart';

class MessageStream {
  MessageStream._internal();

  static final MessageStream _instance = MessageStream._internal();

  static MessageStream get instance {
    return _instance;
  }

   dynamic _message = BehaviorSubject<Map<String, dynamic>>();
  Stream<Map<String, dynamic>> get messageStream => _message.stream;

  void addMessage(Map<String, dynamic> msg) {
    _message.add(msg);
    return;
  }

  void dispose() {
    _message.close();
  }
}
