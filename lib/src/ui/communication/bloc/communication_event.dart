part of 'communication_bloc.dart';

abstract class CommunicationEvent extends Equatable {
  const CommunicationEvent();
}

class SaveCammunicationButtonPressed extends CommunicationEvent {
  final Stream serverurl;

  const SaveCammunicationButtonPressed({@required this.serverurl});

  @override
  List<Object> get props => [serverurl];

  @override
  String toString() => 'SaveCammunicationButtonPressed {serverurl: $serverurl}';
}
