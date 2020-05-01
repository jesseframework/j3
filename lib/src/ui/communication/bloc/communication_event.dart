part of 'communication_bloc.dart';

abstract class CommunicationEvent extends Equatable {
  const CommunicationEvent();
}

class SaveCommunicationButtonPressed extends CommunicationEvent {
  final CommunicationCompanion data;

  const SaveCommunicationButtonPressed({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'SaveCammunicationButtonPressed {data: $data}';
}

class OnFormLoadGetSaveCommunication extends CommunicationEvent {
  final String communicationType;

  OnFormLoadGetSaveCommunication({@required this.communicationType});

  @override
  List<Object> get props => [communicationType];

  @override
  String toString() =>
      'OnFormLoadGetSaveCommunication {communicationType: $communicationType}';
}