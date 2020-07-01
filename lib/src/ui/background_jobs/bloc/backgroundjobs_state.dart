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

part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsState extends Equatable {
  const BackgroundJobsState();
  @override
  List<Object> get props => [];
}

class BackgroundJobsUninitialized extends BackgroundJobsState {}

class BackgroundJobsLoading extends BackgroundJobsState {}

class BackgroundJobsSuccess extends BackgroundJobsState {
  //final BackgroundJobScheduleCompanion data;
  final userMessage;
  const BackgroundJobsSuccess({@required this.userMessage});

  @override
  List<Object> get props => [userMessage];

  @override
  String toString() => 'BackgroundJobsSuccess { userMessage: $userMessage }';
}

class BackgroundJobsStoped extends BackgroundJobsState {
  final userMessage;
  const BackgroundJobsStoped({@required this.userMessage});

  @override
  List<Object> get props => [userMessage];

  @override
  String toString() => 'BackgroundJobsSuccess { userMessage: $userMessage }';
}


class BackgroundJobsFailure extends BackgroundJobsState {
  final String error;

  const BackgroundJobsFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'BackgroundJobsFailure { error: $error }';
}
