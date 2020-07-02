import 'package:moor/moor.dart';

class BusinessRule extends Table {
  TextColumn get code => text()();
  TextColumn get ruleName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  BoolColumn get isGlobalRule => boolean().withDefault(Constant(false))();
  TextColumn get deviceRule => text().nullable()();
  TextColumn get userRule => text().nullable()();
  TextColumn get domain => text().nullable()();
  DateTimeColumn get expiredDateTime => dateTime().nullable()();

  TextColumn get syncError => text().nullable()();

  @override
  Set<Column> get primaryKey => {code};
}
