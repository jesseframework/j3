part of 'offline_bloc.dart';

abstract class OfflineBlocEvent extends Equatable {
  const OfflineBlocEvent();
}

// class OfflineLoginButtonPressed extends OfflineBlocEvent {
//   final String userName;
//   final String password;
//   final int tenant;
//   final int id;
//   final UserRepository userRepository;

//   const OfflineLoginButtonPressed(
//       {@required this.userName,
//       @required this.password,
//       @required this.tenant,
//       @required this.id,
//       this.userRepository});

//   @override
//   List<Object> get props => [userName, password, tenant, id];

//   @override
//   String toString() =>
//       'OfflineLoginButtonPressed { username: $userName, password: $password, tenant: $tenant, id: $id  }';
// }
