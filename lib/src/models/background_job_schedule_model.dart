import 'package:moor/moor.dart';

class BackgroundJobSchedule extends Table {
  IntColumn get id => integer()();
  TextColumn get jobname => text()();
  DateTimeColumn get startdatetime => dateTime()();
  TextColumn get syncfrequency => text()();
  BoolColumn get enablejob => boolean().withDefault(Constant(false))();
}
