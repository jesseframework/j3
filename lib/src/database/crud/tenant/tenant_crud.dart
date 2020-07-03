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

  Future<TenantData> getSingleTenant(String tenantName, String userName) {
    return (select(db.tenant)
          ..where((t) =>
              t.tenantName.equals(tenantName) & t.userName.equals(userName)))
        .getSingle();
  }

  Stream<List<TenantData>> watchAllTenant() {
    return (select(db.tenant).watch());
  }

  Future<void> createOrUpdate(TenantCompanion tenantData) {
    return into(db.tenant).insertOnConflictUpdate(tenantData);
  }

  Future insertTenant(TenantData tenantData) =>
      into(db.tenant).insert(tenantData);

  Future deleteAllTenant() => delete(db.tenant).go();
}
