import 'package:moor/moor.dart';

class Tenant extends Table {
  IntColumn get tenantId => integer().autoIncrement()();
  TextColumn get tenantName => text().nullable()();
  IntColumn get tenantState => integer().nullable()();
  IntColumn get userId => integer().nullable()();
  TextColumn get userName => text().nullable()();

  @override
  Set<Column> get primaryKey => {tenantId};
}
