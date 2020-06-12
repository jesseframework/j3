import 'package:moor/moor.dart';

class Tenant extends Table {
  IntColumn get tenantId => integer()();
  TextColumn get tenantName => text().withLength(min: 1, max: 100)();
  IntColumn get tenantState => integer()();

  @override
  Set<Column> get primaryKey => {tenantId};
}
