import 'package:j3enterprise/src/models/tenant_model.dart';
import 'package:moor/moor.dart';

import '../../moor_database.dart';

part 'tenant_curd.g.dart';

@UseDao(tables: [Tenants])
class TenantDao extends DatabaseAccessor<AppDatabase> with _$TenantDaoMixin {
  final AppDatabase db;
  TenantDao(this.db) : super(db);

  Future<Tenant> getTenant() {
    return (select(db.tenants)..where((u) => u.id.equals(10))).getSingle();
  }

  Future insertTenant(String data) async {
    print("tenant insert");
    return into(db.tenants).insert(
        TenantsCompanion(id: Value(10), tenant: Value(data.toString())));
    // return ((db.tenants)..where((t) => t.id.equals(0)))
    //     .(TenantsCompanion(id: Value(0), tenant: Value(data.toString())));
  }

  Future updateTenant(String data) async {
    var result = await getTenant();
    if (result != null) {
      return (update(db.tenants)..where((t) => t.id.equals(10))).write(
          TenantsCompanion(id: Value(10), tenant: Value(data.toString())));
    } else {
      await insertTenant(data);
    }
  }
  // Future updateTenant(int data) {
  //   return update(db.tenants)
  //     ..where((t) => t.id.equals(id)).write(
  //         TenantsCompanion(id: Value(10), tenant: Value(data.toString())));
  //   // return ((db.tenants)..where((t) => t.id.equals(0)))
  //   //     .(TenantsCompanion(id: Value(0), tenant: Value(data.toString())));
  // }
}
