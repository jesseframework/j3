import 'dart:async';

import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/function/check_for_user_data_on_server.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  UserFromServer userFromServer;
  UserHash userHash;

  AuthenticationBloc({@required this.userRepository}) {
    assert(userRepository != null);
    userFromServer = new UserFromServer(userRepository: userRepository);
    userHash = new UserHash(userRepository: userRepository);
  }

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
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
      await userRepository.persistToken(event.token);
      yield AuthenticationAuthenticated();

      var offlineready = await userFromServer.validateUser(event.userID);
      if (offlineready == true) {
        yield AuthenticationCreateMobileHash();
      }
    }

    if (event is OfflineLoginButtonPressed) {
      await userHash.hashuserdata(
          event.userName, event.password, event.tenant, event.id);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
