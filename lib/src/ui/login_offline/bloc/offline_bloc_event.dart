part of 'offline_bloc.dart';

abstract class OfflineBlocEvent extends Equatable {
  const OfflineBlocEvent();
}

class OfflineLoginButtonPressed extends OfflineBlocEvent {
  final String username;
  final String password;
  final int tenant;

  const OfflineLoginButtonPressed(
      {@required this.username,
      @required this.password,
      @required this.tenant});

  @override
  List<Object> get props => [username, password, tenant];

  @override
  String toString() =>
      'OfflineLoginButtonPressed { username: $username, password: $password, tenant: $tenant }';
}
