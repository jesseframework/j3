part of 'offline_bloc.dart';

abstract class OfflineBlocState extends Equatable {
  const OfflineBlocState();

  @override
  List<Object> get props => [];
}

class BlocInitial extends OfflineBlocState {
  @override
  List<Object> get props => [];
}

class OfflineLoginLoading extends OfflineBlocState {}

class OfflineLoginFailure extends OfflineBlocState {
  final String error;

  const OfflineLoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
