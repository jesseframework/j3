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
