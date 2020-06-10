part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final BuildContext context;

  const LoginButtonPressed(
      {@required this.username, @required this.password, this.context});

  @override
  List<Object> get props => [username, password, context];

  @override
  String toString() =>
      'LoginButtonPressed { username: $username, password: $password, context: $context}';
}
