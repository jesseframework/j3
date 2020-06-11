part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final BuildContext context;
  final int tenantId;
  final String tenantname;

  const LoginButtonPressed(
      {@required this.username,
      @required this.password,
      this.context,
      this.tenantId,
      this.tenantname});

  @override
  List<Object> get props => [username, password, context, tenantId, tenantname];

  @override
  String toString() =>
      'LoginButtonPressed { username: $username, password: $password, context: $context, tenantId: $tenantId, tenantname: $tenantname, tenant: $tenantname}';
}
