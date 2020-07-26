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

import 'package:chopper/chopper.dart';

import 'dart:io' show Platform;

import 'package:j3enterprise/src/resources/services/connection_service.dart';

class MobileDataInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (Platform.isAndroid || Platform.isIOS) {
      var isConnected = await ConnectionService().isConnected();

      if (!isConnected) {
        throw MobileDataCostException();
      }
    }
    return request;
  }
}

class MobileDataCostException implements Exception {
  final message = 'You are not connection to the internet';

  @override
  String toString() => message;
}
