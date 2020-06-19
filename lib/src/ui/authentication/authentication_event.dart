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
