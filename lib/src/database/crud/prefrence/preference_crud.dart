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

import 'package:easy_localization/easy_localization.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/non_global_preference_setting.dart';
import 'package:j3enterprise/src/models/preference_model.dart';
import 'package:moor/moor.dart';

part 'preference_crud.g.dart';

@UseDao(tables: [Preference, NonGlobalPreference])
class PreferenceDao extends DatabaseAccessor<AppDatabase>
    with _$PreferenceDaoMixin {
  final AppDatabase db;
  PreferenceDao(this.db) : super(db);

  Future<List<PreferenceData>> getPreferences(String prefCode) {
    return (select(db.preference)..where((t) => t.code.equals(prefCode))).get();
  }

  Future<PreferenceData> getSinglePreferences(String prefCode) {
    return (select(db.preference)..where((u) => u.code.equals(prefCode)))
        .getSingle();
  }

  Future<List<PreferenceData>> getAllPreferences() {
    return (select(db.preference).get());
  }

  Stream<List<PreferenceData>> watchAllPreferences(String searchText) {
    return (select(db.preference)..where((t) => t.preferenceName.contains(searchText))).watch();
  }

  Stream<PreferenceData> watchSinglePreferences(String prefCode) {
    return (select(db.preference)..where((u) => u.code.equals(prefCode)))
        .watchSingle();
  }

  Future updatePreferenceValue(PreferenceData preferenceData) =>
      update(db.preference).replace(preferenceData);

//  Stream<List<PreferenceWithNonGlobalPreference>> watchAllTasks() {
//    return (select(db.preference)
//          ..orderBy(
//            ([
//              (t) => OrderingTerm(
//                  expression: t.expiredDateTime, mode: OrderingMode.asc),
//              (t) => OrderingTerm(expression: t.preferenceName),
//            ]),
//          ))
//        .join(
//          [
//            leftOuterJoin(
//                db.nonGlobalPreference,
//                db.nonGlobalPreference.parentCode
//                    .equalsExp(db.preference.code)),
//          ],
//        )
//        .watch()
//        .map(
//          (rows) => rows.map(
//            (row) {
//              return PreferenceWithNonGlobalPreference(
//                preference: row.readTable(attachedDatabase.preference),
//                nonGlobalPreference: row.readTable(nonGlobalPreference),
//              );
//            },
//          ).toList(),
//        );
//  }

  Future insertPreferences(PreferenceData preferenceData) =>
      into(db.preference).insert(preferenceData);

  Future<void> createOrUpdatePref(PreferenceData pref) {
    return into(db.preference).insertOnConflictUpdate(pref);
  }

  Future insertOrUpdate(PreferenceData preferenceData) {
    return (into(db.preference).insertOnConflictUpdate(
      PreferenceData(
          code: preferenceData.code,
          preferenceName: preferenceData.preferenceName,
          value: preferenceData.value,
          description: preferenceData.description,
          domain: preferenceData.domain,
          isGlobal: preferenceData.isGlobal,
          expiredDateTime: DateTime.parse(DateFormat('yyyy-MM-dd hh:mm:ss')
              .format(preferenceData.expiredDateTime)),
          tenantId: preferenceData.tenantId,
          id: preferenceData.id),
    ));
  }

  Future deleteAllPreferences() => delete(db.preference).go();
}
