part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsEvent extends Equatable {
  const BackgroundJobsEvent();
}

class BackgroundJobsStart extends BackgroundJobsEvent {
  final String jobname;
  final DateTime rundate;
  final bool jobenable;
  final String syncFrequency;

  const BackgroundJobsStart(
      {@required this.jobenable,
      @required this.jobname,
      @required this.rundate,
      @required this.syncFrequency});

  @override
  List<Object> get props => [jobname, rundate, jobenable];

  @override
  String toString() =>
      'BackgroundJobsExecute {jobenable: $jobname, jobname: $jobname, jobenable: $jobenable, syncFrequency: $syncFrequency';
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
      'BackgroundJobsExecute {jobenable: $jobname, syncFrequency: $syncFrequency';
}
