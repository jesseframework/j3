/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

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

class UpdateAPICommunicationButtonPressed extends CommunicationEvent {
  final CommunicationCompanion data;

  const UpdateAPICommunicationButtonPressed({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'UpdateAPICommunicationButtonPressed {data: $data}';
}

class UpdateERPCommunicationButtonPressed extends CommunicationEvent {
  final CommunicationCompanion data;

  const UpdateERPCommunicationButtonPressed({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'UpdateERPCommunicationButtonPressed {data: $data}';
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
