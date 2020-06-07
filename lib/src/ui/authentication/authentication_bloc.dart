import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';
import 'package:moor/moor.dart' as moor;

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  var db;
  UserDao userDao;
  AuthenticationBloc({@required this.userRepository}) {
    assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
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
      final Response response =
          await userRepository.getUser(userID: event.userID);
      Map<String, dynamic> map = json.decode(response.bodyString);
      if (response.isSuccessful && map['success']) {
        Map<String, dynamic> result = map['result'];
        //var saveDb = User.fromJson(result);
        //yield AuthenticationAndSaveUser();
        //DateTime today = DateTime.now();

        var formData = UsersCompanion(
            fullName: moor.Value(result['fullName']),
            emailAddress: moor.Value(result['emailAddress']),
            surname: moor.Value(result['surname']),
            userName: moor.Value(result['userName']),
            id: moor.Value(result['id']),
            name: moor.Value(result['name']),
            enableOfflineLogin: moor.Value(result['enableOfflineLogin']),
            isActive: moor.Value(result['isActive']),
            creationTime: moor.Value(DateTime.parse(result['creationTime'])));

        userDao.insertUser(formData);
      }
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
