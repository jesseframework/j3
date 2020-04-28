import 'package:moor/moor.dart';

class Comsset extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get serverurl => text()();
  TextColumn get username => text()();
  TextColumn get newpasskey => text()();
  TextColumn get confirmpasskey => text()();
  TextColumn get syncfrequency => text()();
  TextColumn get commtype => text()();
  TextColumn get typeoferp => text()();
}
