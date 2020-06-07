import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'offline_bloc_event.dart';
part 'offline_bloc_state.dart';

class OfflineBloc extends Bloc<OfflineBlocEvent, OfflineBlocState> {
  @override
  OfflineBlocState get initialState => BlocInitial();

  @override
  Stream<OfflineBlocState> mapEventToState(
    OfflineBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
