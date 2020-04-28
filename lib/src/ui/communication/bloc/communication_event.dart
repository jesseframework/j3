part of 'communication_bloc.dart';

abstract class CommunicationEvent extends Equatable {
  const CommunicationEvent();
}

class SaveCammunicationButtonPressed extends CommunicationEvent {
  final ComssetData data;

  const SaveCammunicationButtonPressed({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'SaveCammunicationButtonPressed {data: $data}';
}

class OnFormLoadGetSaveCommunication {
  final String typeOfErp;

  OnFormLoadGetSaveCommunication({@required this.typeOfErp});
}
