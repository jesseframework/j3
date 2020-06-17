import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:j3enterprise/src/database/crud/backgroundjob/backgroundjob_schedule_crud.dart';

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/shared/function/sync_frequency.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:logging/logging.dart';
import 'package:moor/moor.dart' as moor;

part 'backgroundjobs_event.dart';
part 'backgroundjobs_state.dart';

class BackgroundJobsBloc
    extends Bloc<BackgroundJobsEvent, BackgroundJobsState> {
  static final _log = Logger('BackgroundJobsBloc');
  var db;
  String userMessage;
  AppLoggerRepository appLoggerRepository;
  BackgroundJobScheduleDao backgroundJobScheduleDao;
  BackgroundJobsBloc() {
    db = AppDatabase();
    appLoggerRepository = new AppLoggerRepository();
    backgroundJobScheduleDao = new BackgroundJobScheduleDao(db);
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
      if (event is BackgroundJobsSaveButtonPress) {
        var fromEvent = new BackgroundJobScheduleCompanion(
            jobName: moor.Value(event.jobname),
            syncFrequency: moor.Value(event.syncFrequency),
            startDateTime: moor.Value(DateTime.tryParse(event.startDateTime)),
            enableJob: moor.Value(true));

        var isJobNameInDb =
            await backgroundJobScheduleDao.getJob(event.jobname);
        if (isJobNameInDb != null) {
          await backgroundJobScheduleDao.updateBackgroundJob(
              fromEvent, event.jobname);
          userMessage =
              AppLocalization.of(event.context).translate('user_message') ??
                  "Update Successful";
        } else {
          await backgroundJobScheduleDao.insertJobSchedule(fromEvent);
          userMessage =
              AppLocalization.of(event.context).translate('user_message') ??
                  "Job Added Successful";
        }

        yield BackgroundJobsSuccess(data: fromEvent, userMessage: userMessage);

        // syncfrequency(
        //     event.syncFrequency, appLoggerRepository.putAppLogOnServer());
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
      yield BackgroundJobsFailure(error: error.toString());
    }
  }
}
