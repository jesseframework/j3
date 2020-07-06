import 'package:moor/moor.dart';

class NonGlobalPreference extends Table {
  IntColumn get id => integer()();
  TextColumn get parentCode => text()();
  TextColumn get description => text()();
  TextColumn get code => text()();
  TextColumn get value => text()();
  TextColumn get settingType => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get userName => text().nullable()();
  TextColumn get screen => text().nullable()();
  BoolColumn get isApply => boolean().withDefault(Constant(false))();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();
  TextColumn get syncError => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
