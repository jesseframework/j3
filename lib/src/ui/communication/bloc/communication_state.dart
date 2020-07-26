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
  String toString() => 'CommunicationLoadSuccess { data: $data }';
}

class CommunicationUpdateuccess extends CommunicationState {
  final CommunicationCompanion data;

  const CommunicationUpdateuccess({@required this.data});

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'CommunicationUpdateuccess { data: $data }';
}

class CommunicationUpdate extends CommunicationState {}

class CommunicationFailure extends CommunicationState {
  final String error;

  const CommunicationFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CommunicationFailure { error: $error }';
}
