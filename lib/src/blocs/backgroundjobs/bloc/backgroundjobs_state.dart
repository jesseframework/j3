part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsState extends Equatable {
  @override
  List<Object> get props => [];
}

class BackgroundJobsUninitialized extends BackgroundJobsState{}

class BackgroundJobsLoading extends BackgroundJobsState{}

class BackgroundJobsSendNotification extends BackgroundJobsState{}

class BackgroundJobsStartAndStop extends BackgroundJobsState{}


