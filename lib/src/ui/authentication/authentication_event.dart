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
  final int userID;

  const LoggedIn({@required this.token, @required this.userID});

  @override
  List<Object> get props => [token,userID];

  @override
  String toString() => 'LoggedIn { token: $token  userID : $userID}';
}

class LoggedOut extends AuthenticationEvent {}
