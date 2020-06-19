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
 * along with Jesseframework.  If not, see <http://www.gnu.org/licenses/>.
 */

part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final BuildContext context;
  final int tenantId;
  final String tenantName;
  final String deviceId;

  const LoginButtonPressed(
      {@required this.username,
      @required this.password,
      this.context,
      this.tenantId,
      this.tenantName,
      this.deviceId});

  @override
  List<Object> get props =>
      [username, password, context, tenantId, tenantName, deviceId];

  @override
  String toString() => 'LoginButtonPressed { username: $username, '
      'password: $password, '
      'context: $context, '
      'tenantId: $tenantId, '
      'tenantname: $tenantName, '
      'deviceId: $deviceId, '
      'tenant: $tenantName}';
}
