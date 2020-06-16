import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/function/check_for_user_data_on_server.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:meta/meta.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';
import 'package:j3enterprise/src/database/crud/tenant/tenant_curd.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  UserFromServer userFromServer;
  UserHashSave userHash;
  TenantDao tenantDao;
  var db;

  AuthenticationBloc({@required this.userRepository}) {
    db = AppDatabase();
    tenantDao = TenantDao(db);
    assert(userRepository != null);

    userFromServer = new UserFromServer(userRepository: userRepository);
    userHash = new UserHashSave(userRepository: userRepository);
  }

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      await Future.delayed(Duration(seconds: 6));

      // var data = await userDao.getTenant();
      // print(data.tenant);

      final bool hasToken = await userRepository.hasToken();

      if (hasToken) {
        yield AuthenticationAuthenticated();
      } else {
        yield AuthenticationLoading();
        var result = await tenantDao.getTenant();

        yield AuthenticationUnauthenticated(
            result == null ? "No Tenant Set" : result.tenant);
      }
    }
    //ToDo Implement tenantid
    if (event is LoggedIn) {
      yield AuthenticationLoading();
      await userRepository.persistToken(
          event.token, event.userId, event.tenantId);

      yield AuthenticationAuthenticated();

      var offlineReady =
          await userFromServer.validateUser(event.userId, event.tenantId);
      if (offlineReady == true) {
        yield AuthenticationCreateMobileHash();
      }
    }

    if (event is OfflineLoginButtonPressed) {
      await userHash.saveHash(event.password, event.tenant, event.userId);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      var result = await tenantDao.getTenant();
      yield AuthenticationUnauthenticated(
          result == null ? "No Tenant Set" : result.tenant);
    }
  }
}
