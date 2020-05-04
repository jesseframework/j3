import 'package:moor/moor.dart';

mixin SyncTrigger implements Table {
  DateTimeColumn get importDateTime => dateTime()();
  DateTimeColumn get exportDateTime => dateTime()();
  TextColumn get exportStatus => text()();
  TextColumn get importStatus => text()();
  TextColumn get syncError => text()();





}
