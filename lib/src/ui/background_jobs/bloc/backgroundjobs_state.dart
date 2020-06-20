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
