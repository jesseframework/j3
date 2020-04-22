import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


part 'backgroundjobs_event.dart';
part 'backgroundjobs_state.dart';

class BackgroundJobsBloc extends Bloc<BackgroundJobsEvent, BackgroundJobsState> {

  @override
  BackgroundJobsState get initialState => BackgroundJobsUninitialized();

  @override
  Stream<BackgroundJobsState> mapEventToState(
    BackgroundJobsEvent event,
  ) async* {
    
  }
}
