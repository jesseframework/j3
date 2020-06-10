import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_event.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'dart:io' show Platform;

import 'package:j3enterprise/src/resources/services/connection_service.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;
  UserHash userHash;

  var db;
  UserDao userDao;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  }) {
    userHash = new UserHash(userRepository: userRepository);
    assert(userRepository != null);
    assert(authenticationBloc != null);

    db = AppDatabase();
    userDao = UserDao(db);
  }

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      if (Platform.isAndroid || Platform.isIOS) {
        var isConnected = await ConnectionService().isConnected();
        print(isConnected);
        if (isConnected) {
          yield LoginLoading();
          final Response response = await userRepository.authenticate(
            username: event.username,
            password: event.password,
          );
          Map<String, dynamic> map = json.decode(response.bodyString);
          if (response.isSuccessful && map['success']) {
            //decode the response body
            Map<String, dynamic> result = map['result'];
            authenticationBloc.add(LoggedIn(
                token: result['accessToken'], userId: result['userId']));
            yield LoginInitial();
          } else {
            //display errors
            // can have an error class and use frommap here as well
            String error = map["error"]["details"].toString();
            if (error == null) {
              error = AppLocalization.of(event.context)
                      .translate('online_login_failed') ??
                  "Something went wrong! Please try again";
            }
            yield LoginFailure(error: error);
          }
        } else {
          yield LoginLoading();
          var userDate = await userDao.getSingleUserByUserName(event.username);
          if (userDate != null) {
            String _userHash =
                await userHash.createHash(event.password, userDate.id, 1);
            if (_userHash != null) {
              if (userDate.mobileHash == _userHash) {
                authenticationBloc
                    .add(LoggedIn(token: "", userId: userDate.id));
                yield LoginInitial();
              } else {
                String error = AppLocalization.of(event.context)
                        .translate('offline_login_failed') ??
                    'Something went wrong! Unable to log you in offline. Please try againg';

                yield LoginFailure(error: error);
              }
            }
          } else {
            String error = AppLocalization.of(event.context)
                    .translate('offline_login_failed') ??
                'Something went wrong! Unable to log you in offline. Please try againg';

            yield LoginFailure(error: error);
          }
        }
      } else {
        try {
          //Not Android and iOS device
          yield LoginLoading();
          final Response response = await userRepository.authenticate(
            username: event.username,
            password: event.password,
          );
          Map<String, dynamic> map = json.decode(response.bodyString);
          if (response.isSuccessful && map['success']) {
            //decode the response body
            Map<String, dynamic> result = map['result'];
            authenticationBloc.add(LoggedIn(
                token: result['accessToken'], userId: result['userId']));
            yield LoginInitial();
          } else {
            //display errors
            // can have an error class and use frommap here as well
            String error = map["error"]["details"].toString();
            if (error == null) {
              error = AppLocalization.of(event.context)
                      .translate('online_login_failed') ??
                  "Something went wrong! Please try again";
            }
            yield LoginFailure(error: error);
          }
        } catch (error) {
          yield LoginFailure(error: error.toString());
        }
      }
    }
  }
}
