import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/tenant_model.dart';
import 'package:moor/moor.dart';

part 'tenant_crud.g.dart';

@UseDao(tables: [Tenant])
class TenantDao extends DatabaseAccessor<AppDatabase> with _$TenantDaoMixin {
  final AppDatabase db;
  TenantDao(this.db) : super(db);

  Future<List<TenantData>> getAllTenant() {
    return (select(db.tenant).get());
  }

  Stream<List<TenantData>> watchAllTenant() {
    return (select(db.tenant).watch());
  }

  Future insertTenant(TenantData tenantData) =>
      into(db.tenant).insert(tenantData);

  Future deleteAllTenant() => delete(db.tenant).go();
}
