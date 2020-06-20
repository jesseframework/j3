import 'package:moor/moor.dart';

class NonGlobalPreference extends Table {
  IntColumn get id => integer()();
  TextColumn get parentCode => text()();
  TextColumn get code => text()();
  TextColumn get value => text()();
  TextColumn get settingType => text()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get userName => text()();
  TextColumn get screen => text()();
  BoolColumn get isApply => boolean().withDefault(Constant(false))();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();
  TextColumn get syncError => text().nullable()();
}
