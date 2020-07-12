import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/non_global_business_rule.dart';
import 'package:moor/moor.dart';

part 'non_global_business_rule_crud.g.dart';

@UseDao(tables: [NonGlobalBusinessRule])
class NonGlobalBusinessRuleDao extends DatabaseAccessor<AppDatabase>
    with _$NonGlobalBusinessRuleDaoMixin {
  final AppDatabase db;
  NonGlobalBusinessRuleDao(this.db) : super(db);

  Future<List<BusinessRuleData>> getAllBusinessRule() {
    return (select(db.businessRule).get());
  }

  Stream<List<NonGlobalBusinessRuleData>> watchAllNonGlobalBussinessRule(
      String parentCode) {
    return (select(db.nonGlobalBusinessRule)
          ..where((t) => t.parentCode.equals(parentCode)))
        .watch();
  }

  Future<void> createOrUpdatePref(NonGlobalBusinessRuleData pref) {
    return into(db.nonGlobalBusinessRule).insertOnConflictUpdate(pref);
  }

  Future insertBusinessRule(BusinessRuleData businessRuleData) =>
      into(db.businessRule).insert(businessRuleData);

  Future updateNonGlobalBussinessRuleValue(
          NonGlobalBusinessRuleData nonGlobalBusinessRuleData) =>
      update(db.nonGlobalBusinessRule).replace(nonGlobalBusinessRuleData);

  Future deleteAllBusinessRule() => delete(db.businessRule).go();
}
