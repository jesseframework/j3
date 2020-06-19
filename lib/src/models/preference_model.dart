import 'package:moor/moor.dart';

class Preference extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get tenantId => integer()();
  TextColumn get code => text()();
  TextColumn get preferenceName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  TextColumn get domain => text().nullable()();
  BoolColumn get isGlobal => boolean().withDefault(Constant(true))();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();
  DateTimeColumn get creationTime => dateTime().nullable()();
  TextColumn get lastModifierTime => text().nullable()();
  TextColumn get syncError => text().nullable()();
}
