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
