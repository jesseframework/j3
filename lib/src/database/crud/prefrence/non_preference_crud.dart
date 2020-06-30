import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/non_global_preference_setting.dart';
import 'package:moor/moor.dart';

part 'non_preference_crud.g.dart';

@UseDao(tables: [NonGlobalPreference])
class NonGlobalPreferenceDao extends DatabaseAccessor<AppDatabase>
    with _$NonGlobalPreferenceDaoMixin {
  final AppDatabase db;
  NonGlobalPreferenceDao(this.db) : super(db);

//  Future<List<PreferenceData>> getPreferences(String prefCode) {
//    return (select(db.preference)..where((t) => t.code.equals(prefCode))).get();
//  }
//
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
//
//  Future<List<PreferenceData>> getAllPreferences() {
//    return (select(db.preference).get());
//  }
//
//  Stream<List<PreferenceData>> watchAllPreferences() {
//    return (select(db.preference).watch());
//  }
//
//  Future insertPreferences(PreferenceData preferenceData) =>
//      into(db.preference).insert(preferenceData);
//
//  Future deleteAllPreferences() => delete(db.preference).go();
}
