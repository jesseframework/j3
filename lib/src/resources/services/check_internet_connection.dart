import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:io' show Platform;

class MobileDataInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (Platform.isAndroid && Platform.isIOS) {
      final connectivityResult = await Connectivity().checkConnectivity();

      final isMobile = connectivityResult == ConnectivityResult.none;
      // Checking for large files is done by evaluating the URL of the request
      // with a regular expression. Specify all endpoints which contain large files.
      //final isLargeFile = request.url.contains(RegExp(r'(/large|/video|/posts)'));

      if (isMobile) {
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
