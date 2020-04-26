part of 'communication_bloc.dart';

abstract class CommunicationState extends Equatable {
  const CommunicationState();

  @override
  List<Object> get props => [];
}

class CommunicationInitial extends CommunicationState {}

class CommunicationLoading extends CommunicationState {}

class CommunicationSuccess extends CommunicationState {}

class CommunicationFailure extends CommunicationState {
  final String error;

  const CommunicationFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CommunicationFailure { error: $error }';
}
