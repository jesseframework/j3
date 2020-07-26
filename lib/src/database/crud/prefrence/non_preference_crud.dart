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
import 'package:j3enterprise/src/models/non_global_preference_setting.dart';
import 'package:moor/moor.dart';

part 'non_preference_crud.g.dart';

@UseDao(tables: [NonGlobalPreference])
class NonGlobalPreferenceDao extends DatabaseAccessor<AppDatabase>
    with _$NonGlobalPreferenceDaoMixin {
  final AppDatabase db;
  NonGlobalPreferenceDao(this.db) : super(db);

  Future<void> createOrUpdatePref(NonGlobalPreferenceData pref) {
    return into(db.nonGlobalPreference).insertOnConflictUpdate(pref);
  }

  Future<NonGlobalPreferenceData> getSingleNonGlobalPref(String parentCode,
      String code, String userName, String deviceId, String screen) {
    return (select(db.nonGlobalPreference)
          ..where((u) =>
              u.code.equals(code) &
              u.parentCode.equals(parentCode) &
              (u.userName.like(userName) |
                  u.deviceId.like(deviceId) |
                  u.screen.like(screen))))
        .getSingle();
  }

  Stream<List<NonGlobalPreferenceData>> watchAllNonGlobalPreferences(
      String parentCode) {
    return (select(db.nonGlobalPreference)
          ..where((t) => t.parentCode.equals(parentCode)))
        .watch();
  }

  Future updateNonGlobalPreferenceValue(NonGlobalPreferenceData nonGlobalPreferenceData) =>
      update(db.nonGlobalPreference).replace(nonGlobalPreferenceData);
}
