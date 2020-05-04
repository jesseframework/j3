part of 'communication_bloc.dart';

abstract class CommunicationState extends Equatable {
  const CommunicationState();

  @override
  List<Object> get props => [];
}

class CommunicationInitial extends CommunicationState {}

class CommunicationLoading extends CommunicationState {}

class CommunicationInserting extends CommunicationState {}

class CommunicationSuccess extends CommunicationState {}

class CommunicationLoadSuccess extends CommunicationState {
  final List<CommunicationData> data;

  const CommunicationLoadSuccess({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'CommunicationFailure { data: $data }';
}

class CommunicationFailure extends CommunicationState {
  final String error;

  const CommunicationFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CommunicationFailure { error: $error }';
}
