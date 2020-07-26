/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final String token;
  final int userId;
  final int tenantId;

  const LoggedIn(
      {@required this.token, @required this.userId, @required this.tenantId});

  @override
  List<Object> get props => [token, userId, tenantId];

  @override
  String toString() =>
      'LoggedIn { token: $token  userID : $userId tenantId : $tenantId}';
}

class OfflineLoginButtonPressed extends AuthenticationEvent {
  final String password;
  final int tenantId;
  final int userId;
  final UserRepository userRepository;

  const OfflineLoginButtonPressed(
      {@required this.password,
      @required this.tenantId,
      @required this.userId,
      this.userRepository});

  @override
  List<Object> get props => [password, tenantId, userId];

  @override
  String toString() =>
      'OfflineLoginButtonPressed { password: $password, tenant: $tenantId, id: $userId  }';
}

class LoggedOut extends AuthenticationEvent {}

class SaveUserData extends AuthenticationEvent {}



class PushNotification extends AuthenticationEvent{
  final String route;


  const PushNotification(
      {@required this.route});

  @override
  List<Object> get props => [route];

  @override
  String toString() =>
      'PushNotification { Route:$route }';

}

