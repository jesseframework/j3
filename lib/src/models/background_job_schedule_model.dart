import 'package:moor/moor.dart';

class BackgroundJobSchedule extends Table {
  IntColumn get id => integer()();
  TextColumn get jobName => text()();
  DateTimeColumn get startDateTime => dateTime()();
  TextColumn get syncFrequency => text()();
  BoolColumn get enableJob => boolean().withDefault(Constant(false))();
  IntColumn get nid => integer()();
}
