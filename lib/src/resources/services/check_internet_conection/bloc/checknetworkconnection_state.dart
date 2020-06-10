part of 'checknetworkconnection_bloc.dart';

abstract class ChecknetworkconnectionState extends Equatable {
  const ChecknetworkconnectionState();
  @override
  List<Object> get props => [];
}

class ChecknetworkconnectionInitial extends ChecknetworkconnectionState {}

class NoInternetState extends ChecknetworkconnectionState {}
