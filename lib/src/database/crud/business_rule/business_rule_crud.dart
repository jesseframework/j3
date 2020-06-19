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

  Stream<List<BusinessRuleData>> watchAllBusinessRule() {
    return (select(db.businessRule).watch());
  }

  Future insertBusinessRule(BusinessRuleData businessRuleData) =>
      into(db.businessRule).insert(businessRuleData);

  Future deleteAllBusinessRule() => delete(db.businessRule).go();
}
