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
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/repositories/preference_repository.dart';
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
import 'package:j3enterprise/src/resources/shared/function/update_backgroung_job_schedule_status.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart' as moor;

part 'backgroundjobs_event.dart';
part 'backgroundjobs_state.dart';

class BackgroundJobsBloc
    extends Bloc<BackgroundJobsEvent, BackgroundJobsState> {
  Scheduler scheduler;
  static final _log = Logger('BackgroundJobsBloc');
  var db;

  String userMessage;
  AppLoggerRepository appLoggerRepository;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  PreferenceRepository preferenceRepository;
  UpdateBackgroundJobStatus updateBackgroundJobStatus;
  BackgroundJobsBloc() {
    db = AppDatabase();
    appLoggerRepository = new AppLoggerRepository();
    preferenceRepository = new PreferenceRepository();
    updateBackgroundJobStatus = new UpdateBackgroundJobStatus();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    scheduler = new Scheduler();
  }

  @override
  BackgroundJobsState get initialState => BackgroundJobsUninitialized();

  @override
  Stream<BackgroundJobsState> mapEventToState(
    BackgroundJobsEvent event,
  ) async* {
    _log.finest('Bloc mapEventToState call');
    try {
<<<<<<< HEAD
=======
     
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
      if (event is BackgroundJobsStart) {
        yield BackgroundJobsLoading();
        var data = await backgroundJobScheduleDao.getAllJobs();
        print('Jobb Data Load $data');
        String formatted = await formatDate(DateTime.now().toString());
        var fromEvent = new BackgroundJobScheduleCompanion(
            jobName: moor.Value(event.jobname),
            syncFrequency: moor.Value(event.syncFrequency),
            startDateTime: moor.Value(DateTime.tryParse(event.startDateTime)),
            enableJob: moor.Value(true),
            jobStatus: moor.Value("Never Run"),
            lastRun: moor.Value(DateTime.tryParse(formatted)));

        var isJobNameInDb =
            await backgroundJobScheduleDao.getJob(event.jobname);
        if (isJobNameInDb != null) {
          await backgroundJobScheduleDao.updateBackgroundJob(
              fromEvent, event.jobname);
          userMessage =
              AppLocalization.of(event.context).translate('user_message') ??
                  "Job Update Successful";
        } else {
          await backgroundJobScheduleDao.insertJobSchedule(fromEvent);
          userMessage =
              AppLocalization.of(event.context).translate('job_user_message') ??
                  "Job Added Successful";
        }

        //Set Time condition to false to start timer
        if (event.jobname == "Log Shipping") {
          scheduler.scheduleJobs(
              event.syncFrequency,
              event.jobname,
              (Timer timer) async =>
                  await appLoggerRepository.putAppLogOnServer(event.jobname));
        }
        if (event.jobname == "Configuration") {
          scheduler.scheduleJobs(
              event.syncFrequency,
              event.jobname,
              (Timer timer) async => await preferenceRepository
                  .getPreferenceFromServer(event.jobname));
        }

        yield BackgroundJobsSuccess(userMessage: userMessage);
      }

      if (event is BackgroundJobsCancel) {
        //yield BackgroundJobsLoading();
<<<<<<< HEAD
=======
        
        scheduleler.cancel(event.jobname);
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb

        scheduler.cancel(event.jobName);
        //AppLoggerRepository.isStopped = true;
        appLoggerRepository.isStopped = true;
        userMessage = AppLocalization.of(event.context)
                .translate('job_cancel_user_message') ??
            "Job Cancel Successful";
        //yield BackgroundJobsStoped(userMessage: userMessage);

        yield BackgroundJobsSuccess(userMessage: userMessage);
      }

<<<<<<< HEAD
      if (event is BackgroundJobsStartAll) {
        var jobData = await backgroundJobScheduleDao.getAllJobs();
        for (var eachJob in jobData) {
          await updateBackgroundJobStatus.updateJobStatus(
              eachJob.jobName, "Never Run");

          if (eachJob.jobName == "Log Shipping") {
            scheduler.runNowJobs(
                eachJob.syncFrequency,
                eachJob.jobName,
                (Timer timer) async => await appLoggerRepository
                    .putAppLogOnServer(eachJob.jobName));
          }
        }

        userMessage = "Jobs Added Successful";

        yield BackgroundJobsSuccess(userMessage: userMessage);
      }

=======
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
      yield BackgroundJobsUninitialized();
    } catch (error) {
      _log.shout(error, StackTrace.current);
      yield BackgroundJobsFailure(error: error.toString());
    }
  }
}
