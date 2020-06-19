import 'package:moor/moor.dart';

class BackgroundJobLogs extends Table {
  IntColumn get id => integer()();
  TextColumn get jobName => text()();
  DateTimeColumn get lastRun => dateTime()();
  TextColumn get jobStatus => text()();
  TextColumn get jobDescription => text()();

  @override
  Set<Column> get primaryKey => {id};
}
