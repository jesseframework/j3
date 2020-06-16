import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/shared/function/sync_frequency.dart';
import 'package:logging/logging.dart';

part 'backgroundjobs_event.dart';
part 'backgroundjobs_state.dart';

class BackgroundJobsBloc
    extends Bloc<BackgroundJobsEvent, BackgroundJobsState> {
  static final _log = Logger('BackgroundJobsBloc');
  AppLoggerRepository appLoggerRepository;
  BackgroundJobsBloc() {
    appLoggerRepository = new AppLoggerRepository();
  }

  @override
  BackgroundJobsState get initialState => BackgroundJobsUninitialized();

  @override
  Stream<BackgroundJobsState> mapEventToState(
    BackgroundJobsEvent event,
  ) async* {
    _log.finest('Bloc mapEventToState call');
    try {
      if (event is BackgroundJobsStart) {
        syncfrequency(
            event.syncFrequency, appLoggerRepository.putAppLogOnServer());
      }
    } catch (error) {
      _log.shout(error, StackTrace.current);
      yield BackgroundJobsFailure(error: error.toString());
    }
  }
}
