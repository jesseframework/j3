import 'package:moor/moor.dart';

class BackgroundJobSchedule extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get jobName => text()();
  DateTimeColumn get startDateTime => dateTime()();
  TextColumn get syncFrequency => text()();
  BoolColumn get enableJob => boolean().withDefault(Constant(false))();
  DateTimeColumn get lastRun => dateTime()();
  TextColumn get jobStatus => text()();

  @override
  Set<Column> get primaryKey => {id};
}
