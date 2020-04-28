import 'package:moor/moor.dart';

class Communication extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get serverurl => text()();
  TextColumn get username => text().nullable()();
  TextColumn get newpasskey => text().nullable()();
  TextColumn get confirmpasskey => text().nullable()();
  TextColumn get syncfrequency => text()();
  TextColumn get communicationtype => text()();
  TextColumn get typeoferp => text().nullable()();
}
