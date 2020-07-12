import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/business_rule_model.dart';
import 'package:moor/moor.dart';

part 'business_rule_crud.g.dart';

@UseDao(tables: [BusinessRule])
class BusinessRuleDao extends DatabaseAccessor<AppDatabase>
    with _$BusinessRuleDaoMixin {
  final AppDatabase db;
  BusinessRuleDao(this.db) : super(db);

  Future<List<BusinessRuleData>> getAllBusinessRule() {
    return (select(db.businessRule).get());
  }

  Future<void> createOrUpdatePref(BusinessRuleData pref) {
    return into(db.businessRule).insertOnConflictUpdate(pref);
  }

  Stream<List<BusinessRuleData>> watchAllBusinessRule(String searchText) {
    return (select(db.businessRule)
          ..where((tbl) => tbl.ruleName.contains(searchText)))
        .watch();
  }

  Stream<BusinessRuleData> watchSingleBussinessRule(String prefCode) {
    return (select(db.businessRule)..where((u) => u.ruleName.equals(prefCode)))
        .watchSingle();
  }

  Future insertBusinessRule(BusinessRuleData businessRuleData) =>
      into(db.businessRule).insert(businessRuleData);

  Future updateBussinessRule(BusinessRuleData businessRuleData) =>
      update(db.businessRule).replace(businessRuleData);

  Future deleteAllBusinessRule() => delete(db.businessRule).go();
}
