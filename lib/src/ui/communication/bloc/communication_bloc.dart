import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:j3enterprise/src/database/crud/communication/comset_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:meta/meta.dart';
import 'package:moor/moor.dart';

part 'communication_event.dart';
part 'communication_state.dart';

class CommunicationBloc extends Bloc<CommunicationEvent, CommunicationState> {
  final ComssetDao comssetDao;

  CommunicationBloc({@required this.comssetDao}) : assert(comssetDao != null);

  @override
  CommunicationState get initialState => CommunicationInitial();

  @override
  Stream<CommunicationState> mapEventToState(
    CommunicationEvent event,
  ) async* {
    if (event is SaveCammunicationButtonPressed) {
      // set state as loading
      yield CommunicationLoading();
      // save data to db
      await comssetDao.insertUser(event.data);
      // set the success state
      yield CommunicationSuccess();
    }
  }
}
