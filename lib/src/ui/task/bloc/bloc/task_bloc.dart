import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  @override
  TaskState get initialState => TaskInitial();

  @override
  Stream<TaskState> mapEventToState(
    TaskEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
