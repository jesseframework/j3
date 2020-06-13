import 'dart:io' show Platform;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/database/crud/communication/communication_setup_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/bloc_deligate.dart';
import 'package:j3enterprise/src/resources/services/firebase_notification_service.dart';
import 'package:logging/logging.dart';

void _setupLogging() {
  Logger.root.level = Level.WARNING;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time} : ${rec.message}');
  });
}

Future<void> initServices() async {
  _setupLogging();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  var dao = CommunicationDao(AppDatabase());
  var comms = await dao.getCommunicationDataByType("API");
  var serverUrl =
      comms == null || comms.isEmpty ? ApiClient.URL : comms[0].serverUrl;
  ApiClient.updateClient(serverUrl);
  if (!Platform.isWindows && !Platform.isMacOS) {
    FirebaseNotificationService.instance;
  }
}
