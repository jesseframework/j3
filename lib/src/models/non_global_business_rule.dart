import 'package:moor/moor.dart';

class NonGlobalBusinessRule extends Table {
  TextColumn get code => text()();
  TextColumn get parentCode => text()();
  TextColumn get ruleName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  TextColumn get deviceRule => text().nullable()();
  TextColumn get userRule => text().nullable()();
  TextColumn get domain => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get userName => text().nullable()();
  TextColumn get screen => text().nullable()();
  BoolColumn get isApply => boolean().withDefault(Constant(false))();
  TextColumn get syncError => text().nullable()();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();
   TextColumn get dataType => text().nullable()();
  TextColumn get dataValue => text().nullable()();
  TextColumn get groups => text().nullable()();

  @override
  Set<Column> get primaryKey => {code};
}
