import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/date_formating.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart' as moor;

part 'backgroundjobs_event.dart';
part 'backgroundjobs_state.dart';

class BackgroundJobsBloc
    extends Bloc<BackgroundJobsEvent, BackgroundJobsState> {
  Scheduleler scheduleler;
  static final _log = Logger('BackgroundJobsBloc');
  var db;

  String userMessage;
  AppLoggerRepository appLoggerRepository;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  BackgroundJobsBloc() {
    db = AppDatabase();
    appLoggerRepository = new AppLoggerRepository();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
    scheduleler = new Scheduleler();
  }

  @override
  BackgroundJobsState get initialState => BackgroundJobsUninitialized();

  @override
  Stream<BackgroundJobsState> mapEventToState(
    BackgroundJobsEvent event,
  ) async* {
    _log.finest('Bloc mapEventToState call');
    try {
      yield BackgroundJobsLoading();

      if (event is BackgroundJobsStart) {
        yield BackgroundJobsStartState();
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
              AppLocalization.of(event.context).translate('user_message') ??
                  "Job Added Successful";
        }

        //Set Time condition to false to start timer
        scheduleler.scheduleJobs(
            event.syncFrequency,
            event.jobname,
            (Timer timer) =>
                appLoggerRepository.putAppLogOnServer(event.jobname));

        yield BackgroundJobsSuccess(userMessage: userMessage);
      }

      if (event is BackgroundJobsCancel) {
        yield BackgroundJobsStop();
        scheduleler.cancel(event.jobname);

        userMessage = AppLocalization.of(event.context)
                .translate('cancel_user_message') ??
            "Job Cancel Successful";
        //yield BackgroundJobsStoped(userMessage: userMessage);

        yield BackgroundJobsSuccess(userMessage: userMessage);
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
      yield BackgroundJobsFailure(error: error.toString());
    }
  }
}
