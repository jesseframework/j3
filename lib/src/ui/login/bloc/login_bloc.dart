import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/services/connection_service.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_event.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;
  UserHash userHash;
  String tenantName;

  var db;
  UserDao userDao;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  }) {
    userHash = new UserHash(userRepository: userRepository);
    assert(userRepository != null);
    assert(authenticationBloc != null);
    getData();
    db = AppDatabase();
    userDao = UserDao(db);
  }

  getData() async {
    tenantName = await userRepository.getTanantFromSharedPref();
  }

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    try {
      String tenantId;
      if (event is LoginButtonPressed) {
        if (Platform.isAndroid || Platform.isIOS) {
          var isConnected = await ConnectionService().isConnected();
          print(isConnected);
          if (isConnected) {
            //Loging with tenant - check for tenant before loging. If no tenant dont validate user and password
            yield LoginLoading();
            final Response tenantResponse =
                await userRepository.checkTenant(tenancyName: event.tenantname);
            Map<String, dynamic> tenantMap =
                json.decode(tenantResponse.bodyString);
            if (tenantResponse.isSuccessful && tenantMap['success']) {
              Map<String, dynamic> tenantResult = tenantMap['result'];
              print(tenantResult);
              await userRepository.setTanantIntoSharedPref(event.tenantname);
              //yield LoginTenantState(tenantName: event.tenant);
              tenantId = tenantResult['tenantId'].toString();
              if (tenantResult['tenantId'] == null) {
                tenantId = 0.toString();
                String error = "There is no tenant defined with name";
                if (error == null) {
                  error = AppLocalization.of(event.context)
                          .translate('tenant_validation_message') ??
                      "There is no tenant defined with name";
                }
                yield LoginFailure(error: error);
                return;
              }
            } else {
              String error = tenantMap["error"]["details"].toString();
              if (error == null) {
                error = AppLocalization.of(event.context)
                        .translate('online_login_failed') ??
                    "Something went wrong! Please try again";
              }
              yield LoginFailure(error: error);
              return;
            }

            //Check user and validate password
            final Response response = await userRepository.authenticate(
              username: event.username,
              password: event.password,
            );
            Map<String, dynamic> map = json.decode(response.bodyString);
            if (response.isSuccessful && map['success']) {
              //decode the response body
              Map<String, dynamic> result = map['result'];

              authenticationBloc.add(LoggedIn(
                  token: result['accessToken'],
                  userId: result['userId'],
                  tenantId: int.tryParse(tenantId)));
              yield LoginInitial();
            } else {
              //display errors
              String error = map["error"]["details"].toString();
              if (error == null) {
                error = AppLocalization.of(event.context)
                        .translate('online_login_failed') ??
                    "Something went wrong! Please try again";
              }
              yield LoginFailure(error: error);
            }
          } else {
            //Loging offline with hash
            yield LoginLoading();
            var userDate =
                await userDao.getSingleUserByUserName(event.username);
            if (userDate != null) {
              final int _tenantId = userDate.tenantId;

              String _userHash = await userHash.createHash(
                  event.password, _tenantId, userDate.id);

              if (_userHash != null) {
                if (userDate.mobileHash == _userHash.toString()) {
                  authenticationBloc.add(LoggedIn(
                      token: "",
                      userId: userDate.id,
                      tenantId: int.tryParse(_tenantId.toString())));
                  yield LoginInitial();
                } else {
                  String error = AppLocalization.of(event.context)
                          .translate('online_login_code_miss_match') ??
                      'Invalid User Name or Password';

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
          //Not Android and iOS device
          yield LoginLoading();
          final Response tenantResponse =
              await userRepository.checkTenant(tenancyName: event.tenantname);
          Map<String, dynamic> tenantMap =
              json.decode(tenantResponse.bodyString);
          if (tenantResponse.isSuccessful && tenantMap['success']) {
            Map<String, dynamic> tenantResult = tenantMap['result'];
            print(tenantResult);
            await userRepository.setTanantIntoSharedPref(event.tenantname);
            //yield LoginTenantState(tenantName: event.tenant);
            tenantId = tenantResult['tenantId'].toString();
            if (tenantResult['tenantId'] == null) {
              tenantId = 0.toString();
              String error = "There is no tenant defined with name";
              if (error == null) {
                error = AppLocalization.of(event.context)
                        .translate('tenant_validation_message') ??
                    "There is no tenant defined with name";
              }
              yield LoginFailure(error: error);
              return;
            }
          } else {
            String error = tenantMap["error"]["details"].toString();
            if (error == null) {
              error = AppLocalization.of(event.context)
                      .translate('online_login_failed') ??
                  "Something went wrong! Please try again";
            }
            yield LoginFailure(error: error);
            return;
          }
          final Response response = await userRepository.authenticate(
            username: event.username,
            password: event.password,
          );
          Map<String, dynamic> map = json.decode(response.bodyString);
          if (response.isSuccessful && map['success']) {
            //decode the response body
            Map<String, dynamic> result = map['result'];
            authenticationBloc.add(LoggedIn(
                token: result['accessToken'],
                userId: result['userId'],
                tenantId: int.tryParse(tenantId)));
            yield LoginInitial();
          } else {
            //display errors
            // can have an error class and use from map here as well
            String error = map["error"]["details"].toString();
            if (error == null) {
              error = AppLocalization.of(event.context)
                      .translate('online_login_failed') ??
                  "Something went wrong! Please try again";
            }
            yield LoginFailure(error: error);
          }
        }
      }
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }
}
