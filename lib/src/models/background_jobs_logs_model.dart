import 'package:moor/moor.dart';

class BackgroundJobLogs extends Table {
  IntColumn get id => integer()();
  TextColumn get jobname => text()();
  DateTimeColumn get lastrun => dateTime()();
  TextColumn get jobstatus => text()();
  TextColumn get jobdescription => text()();
}
