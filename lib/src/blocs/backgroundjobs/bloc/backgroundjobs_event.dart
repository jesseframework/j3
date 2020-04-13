part of 'backgroundjobs_bloc.dart';

abstract class BackgroundJobsEvent extends Equatable {
  const BackgroundJobsEvent();
}

class BackgroundJobsExecute extends BackgroundJobsEvent {
  final String jobname;
  final DateTime rundate;
  final bool jobenable;

  const BackgroundJobsExecute({
    @required this.jobenable,
    @required this.jobname,
    @required this.rundate
  });

  @override
  List<Object> get props => [jobname,rundate,jobenable];

  @override
  String toString() => 'BackgroundJobsExecute {jobenable: $jobname, jobname: $jobname, jobenable: $jobenable';


}

