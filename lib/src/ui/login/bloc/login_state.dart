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

part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  final String tenantName;
  const LoginInitial({this.tenantName});

  @override
  List<Object> get props => [tenantName];

  @override
  String toString() => 'LoginInitial { tenantName: $tenantName }';
}

class LoginTenantState extends LoginState {
  final String tenantName;
  const LoginTenantState({this.tenantName});

  @override
  List<Object> get props => [tenantName];

  @override
  String toString() => 'LoginInitial { tenantName: $tenantName }';
}

class LoginLoading extends LoginState {
  const LoginLoading();

  @override
  List<Object> get props => [];
}

class LoginFailure extends LoginState {
  final String error;

  const LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
