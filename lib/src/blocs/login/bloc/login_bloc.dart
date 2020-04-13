import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/blocs/authentication/authentication_bloc.dart';
import 'package:j3enterprise/src/blocs/authentication/authentication_event.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      final Response response = await userRepository.authenticate(
        username: event.username,
        password: event.password,
      );
      Map<String, dynamic> map = json.decode(response.bodyString);
      if (response.isSuccessful && map['success']) {
        //decode the response body
        Map<String, dynamic> result = map['result'];
        authenticationBloc.add(
            LoggedIn(token: result['accessToken'], userID: result['userId']));
        yield LoginInitial();
      } else {
        //display errors
        // can have an error class and use frommap here as well
        String error = map["error"]["details"].toString();
        if (error == null) {
          error = "Something went wrong! Please try again";
        }
        yield LoginFailure(error: error);
      }
    }
  }
}
