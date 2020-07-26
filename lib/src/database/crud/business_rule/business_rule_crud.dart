/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

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
