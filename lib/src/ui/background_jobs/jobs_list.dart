import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class JobList extends Equatable {
  final String jobName;
  final String syncFrequenc;
  final bool isEnable;

  const JobList({
    @required this.jobName,
    @required this.syncFrequenc,
    this.isEnable = false,
  });

  JobList copyWith({
    String jobName,
    String syncFrequenc,
    bool isEnable,
  }) {
    return JobList(
      jobName: jobName ?? this.jobName,
      syncFrequenc: syncFrequenc ?? this.syncFrequenc,
      isEnable: isEnable ?? this.isEnable,
    );
  }

  @override
  List<Object> get props => [jobName, syncFrequenc, isEnable];

  @override
  String toString() =>
      'Item { id: $jobName, value: $syncFrequenc, isDeleting: $syncFrequenc }';
}
