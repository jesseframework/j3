import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:equatable/equatable.dart';

part 'checknetworkconnection_event.dart';
part 'checknetworkconnection_state.dart';

class ChecknetworkconnectionBloc
    extends Bloc<ChecknetworkconnectionEvent, ChecknetworkconnectionState> {
  @override
  ChecknetworkconnectionState get initialState =>
      ChecknetworkconnectionInitial();

  @override
  Stream<ChecknetworkconnectionState> mapEventToState(
    ChecknetworkconnectionEvent event,
  ) async* {
    if (event is ApiRequest) {
      final connectivityResult = await Connectivity().checkConnectivity();
      bool isMobile = connectivityResult == ConnectivityResult.none;
      if (isMobile = true) {
        yield NoInternetState();
      }
    }
  }
}
