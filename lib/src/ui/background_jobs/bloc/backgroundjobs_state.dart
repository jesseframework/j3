part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsState extends Equatable {
  const BackgroundJobsState();
  @override
  List<Object> get props => [];
}

class BackgroundJobsUninitialized extends BackgroundJobsState {}

class BackgroundJobsLoading extends BackgroundJobsState {}

class BackgroundJobsSendNotification extends BackgroundJobsState {}

class BackgroundJobsStartState extends BackgroundJobsState {}

class BackgroundJobsStopState extends BackgroundJobsState {}

class BackgroundJobsFailure extends BackgroundJobsState {
  final String error;

  const BackgroundJobsFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'BackgroundJobsFailure { error: $error }';
}
