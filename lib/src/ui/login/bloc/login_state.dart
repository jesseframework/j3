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
