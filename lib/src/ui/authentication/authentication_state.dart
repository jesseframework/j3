import 'package:equatable/equatable.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
// import 'package:j3enterprise/database/models/users.dart';
// import 'package:meta/meta.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {}

class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationAndSaveUser extends AuthenticationState {}

class AuthenticationCreateMobileHash extends AuthenticationState {}

class AuthenticationNotificationScreen extends AuthenticationState{}


class PushNotificationState extends AuthenticationState{
  String route;
  PushNotificationState({this.route});
  @override
  List<Object> get props => [route];

}