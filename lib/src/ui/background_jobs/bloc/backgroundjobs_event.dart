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

abstract class BackgroundJobsEvent extends Equatable {
  const BackgroundJobsEvent();
}

class BackgroundJobsStart extends BackgroundJobsEvent {
  final String jobname;
  final String syncFrequency;
  final String startDateTime;
  final BuildContext context;

  const BackgroundJobsStart(
      {@required this.jobname,
      @required this.syncFrequency,
      @required this.startDateTime,
      @required this.context});

  @override
  List<Object> get props => [jobname, syncFrequency];

  @override
  String toString() =>
      'BackgroundJobsStart {jobenable: $jobname, syncFrequency: $syncFrequency';
}

class BackgroundJobsStartAll extends BackgroundJobsEvent {
  const BackgroundJobsStartAll();

  @override
  List<Object> get props => [];
}

class BackgroundJobsCancel extends BackgroundJobsEvent {
  final String jobName;
  final String syncFrequency;
  final BuildContext context;

  const BackgroundJobsCancel(
      {@required this.jobName,
      @required this.syncFrequency,
      @required this.context});

  @override
  List<Object> get props => [jobName, syncFrequency];

  @override
  String toString() =>
      'BackgroundJobsStop {jobenable: $jobName, syncFrequency: $syncFrequency';
}

class BackgroundJobsList extends BackgroundJobsEvent {
  const BackgroundJobsList();

  @override
  List<Object> get props => [];
}

class BackgroundJobsFetchList extends BackgroundJobsEvent {
  const BackgroundJobsFetchList();

  @override
  List<Object> get props => [];
}
