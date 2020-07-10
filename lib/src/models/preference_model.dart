import 'package:moor/moor.dart';

class Preference extends Table {
  IntColumn get id => integer()();
  IntColumn get tenantId => integer()();
  TextColumn get code => text()();
  TextColumn get preferenceName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  TextColumn get domain => text().nullable()();
  BoolColumn get isGlobal => boolean().withDefault(Constant(true))();
  TextColumn get syncError => text().nullable()();
  DateTimeColumn get  expiredDateTime =>  dateTime().nullable()();
  TextColumn get dataType => text().nullable()();
  TextColumn get dataValue => text().nullable()();
  TextColumn get groups => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
