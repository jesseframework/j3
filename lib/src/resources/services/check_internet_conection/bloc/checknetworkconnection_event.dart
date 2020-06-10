part of 'checknetworkconnection_bloc.dart';

abstract class ChecknetworkconnectionEvent extends Equatable {
  const ChecknetworkconnectionEvent();
  @override
  List<Object> get props => [];
}

class NoInternetConnection extends ChecknetworkconnectionEvent {}
