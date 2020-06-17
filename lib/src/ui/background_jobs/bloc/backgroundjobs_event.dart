part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsEvent extends Equatable {
  const BackgroundJobsEvent();
}

class BackgroundJobsSaveButtonPress extends BackgroundJobsEvent {
  final String jobname;
  final String syncFrequency;
  final String startDateTime;
  final BuildContext context;

  const BackgroundJobsSaveButtonPress(
      {@required this.jobname,
      @required this.syncFrequency,
      @required this.startDateTime,
      @required this.context});

  @override
  List<Object> get props => [jobname, syncFrequency];

  @override
  String toString() =>
      'BackgroundJobsSaveButtonPress {jobenable: $jobname, syncFrequency: $syncFrequency';
}

class BackgroundJobsStop extends BackgroundJobsEvent {
  final String jobname;
  final String syncFrequency;

  const BackgroundJobsStop(
      {@required this.jobname, @required this.syncFrequency});

  @override
  List<Object> get props => [jobname, syncFrequency];

  @override
  String toString() =>
      'BackgroundJobsStop {jobenable: $jobname, syncFrequency: $syncFrequency';
}

class BackgroundJobsStart extends BackgroundJobsEvent {
  final String jobname;
  final String syncFrequency;
  final BuildContext context;
  

  const BackgroundJobsStart(
      {@required this.jobname, @required this.syncFrequency, this.context});

  @override
  List<Object> get props => [jobname, syncFrequency];

  @override
  String toString() =>
      'BackgroundJobsExecute {jobenable: $jobname, syncFrequency: $syncFrequency';
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
