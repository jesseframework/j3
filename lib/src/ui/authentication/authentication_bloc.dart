import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:j3enterprise/src/resources/repositories/applogger_repositiry.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/function/check_for_user_data_on_server.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  UserFromServer userFromServer;
  UserHashSave userHash;
  AppLoggerRepository appLoggerRepository;

  AuthenticationBloc({this.userRepository}) {
    assert(userRepository != null);
    userFromServer = new UserFromServer(userRepository: userRepository);
    userHash = new UserHashSave(userRepository: userRepository);
    appLoggerRepository = new AppLoggerRepository();
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
      await userRepository.persistToken(
          event.token, event.userId, event.tenantId);
      yield AuthenticationAuthenticated();

      const oneSec = const Duration(seconds: 60);
      new Timer.periodic(oneSec,
          (Timer t) async => await appLoggerRepository.putAppLogOnServer());

      var offlineReady =
          await userFromServer.validateUser(event.userId, event.tenantId);
      print(offlineReady);
      if (offlineReady == true) {
        yield AuthenticationCreateMobileHash();
      }
    }

    if (event is OfflineLoginButtonPressed) {
      await userHash.saveHash(event.password, event.tenantId, event.userId);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
