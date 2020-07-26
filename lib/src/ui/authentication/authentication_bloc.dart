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
import 'package:bloc/bloc.dart';
import 'package:j3enterprise/main.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/crud/business_rule/business_rule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/function/check_for_user_data_on_server.dart';
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:logging/logging.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';
import 'dart:io' show Platform;

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  var db;
  final UserRepository userRepository = getIt<UserRepository>();
  UserFromServer userFromServer;
  UserHashSave userHash;
  AppLoggerRepository appLoggerRepository;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  BusinessRuleDao businessRuleDao;
  Scheduler scheduleler;

  static final _log = Logger('LoginBloc');

  AuthenticationBloc() {
    db = AppDatabase();
    userFromServer = new UserFromServer(userRepository: userRepository);
    userHash = new UserHashSave(userRepository: userRepository);
    appLoggerRepository = new AppLoggerRepository();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    businessRuleDao = new BusinessRuleDao(db);
    scheduleler = new Scheduler();
  }

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is PushNotification) {
      yield PushNotificationState(route: event.route);
    }
    if (event is AppStarted) {
      await Future.delayed(Duration(seconds: 9));
      final bool hasToken = await userRepository.hasToken();
      if (hasToken) {
        yield AuthenticationAuthenticated();
      } else {
        yield AuthenticationUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield AuthenticationLoading();
      await userRepository.persistToken(
          event.token, event.userId, event.tenantId);
      yield AuthenticationAuthenticated();
      _log.finest('Starting background Jobs');

      if (Platform.isWindows && Platform.isMacOS) {
        var autoAtartJobs =
            await businessRuleDao.getSingleBusinessRule("AUTOSTARTJOBS");
        if (autoAtartJobs != null &&
            autoAtartJobs.value == "ON" &&
            autoAtartJobs.expiredDateTime.isAfter(DateTime.now()) &&
            autoAtartJobs.isGlobalRule == false) {
          var jobData = await backgroundJobScheduleDao.getAllJobs();
          for (var eachJob in jobData) {
            scheduleler.scheduleJobs(
                eachJob.syncFrequency,
                eachJob.jobName,
                (Timer timer) =>
                    appLoggerRepository.putAppLogOnServer(eachJob.jobName));
            _log.finest('background Jobs start');
          }
        }
      }

      if (Platform.isIOS && Platform.isAndroid) {
        var autoAtartJobs =
            await businessRuleDao.getSingleBusinessRule("AUTOSTARTJOBS");
        if (autoAtartJobs != null &&
            autoAtartJobs.value == "ON" &&
            autoAtartJobs.expiredDateTime.isAfter(DateTime.now()) &&
            autoAtartJobs.isGlobalRule == false) {
          var jobData = await backgroundJobScheduleDao.getAllJobs();
          for (var eachJob in jobData) {
            scheduleler.scheduleJobs(
                eachJob.syncFrequency,
                eachJob.jobName,
                (Timer timer) =>
                    appLoggerRepository.putAppLogOnServer(eachJob.jobName));
            _log.finest('background Jobs start');
          }
        }
      }

      var offlineReady =
          await userFromServer.validateUser(event.userId, event.tenantId);
      print(offlineReady);
      if (offlineReady == true) {
        yield AuthenticationCreateMobileHash();
      }
    }

    if (event is OfflineLoginButtonPressed) {
      await userHash.saveHash(event.password, event.tenantId, event.userId);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
