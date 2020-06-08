import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/utils/user_hashdigest.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:meta/meta.dart';

part 'offline_bloc_event.dart';
part 'offline_bloc_state.dart';

class OfflineBloc extends Bloc<OfflineBlocEvent, OfflineBlocState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;
  String userName;
  String password;
  int id;
  int tenant;

  UserHash userHash;

  OfflineBloc({this.userRepository, this.authenticationBloc}) {
    assert(authenticationBloc != null);
    userHash = new UserHash(userRepository: userRepository);
  }

  @override
  OfflineBlocState get initialState => BlocInitial();

  @override
  Stream<OfflineBlocState> mapEventToState(
    OfflineBlocEvent event,
  ) async* {
    if (event is OfflineLoginButtonPressed) {
      userHash.hashuserdata(
          event.userName, event.password, event.tenant, event.id);
      yield OfflineLoginSetupSave();
    }
  }
}
