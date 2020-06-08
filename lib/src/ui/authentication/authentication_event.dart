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
  final int userID;

  const LoggedIn({@required this.token, @required this.userID});

  @override
  List<Object> get props => [token, userID];

  @override
  String toString() => 'LoggedIn { token: $token  userID : $userID}';
}

class OfflineLoginButtonPressed extends AuthenticationEvent {
  final String userName;
  final String password;
  final int tenant;
  final int id;
  final UserRepository userRepository;

  const OfflineLoginButtonPressed(
      {@required this.userName,
      @required this.password,
      @required this.tenant,
      @required this.id,
      this.userRepository});

  @override
  List<Object> get props => [userName, password, tenant, id];

  @override
  String toString() =>
      'OfflineLoginButtonPressed { username: $userName, password: $password, tenant: $tenant, id: $id  }';
}

class LoggedOut extends AuthenticationEvent {}

class SaveUserData extends AuthenticationEvent {}
