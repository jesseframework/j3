import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/non_global_setting.dart';
import 'package:moor/moor.dart';

part 'non_preference_crud.g.dart';

@UseDao(tables: [NonGlobalSetting])
class NonGlobalSettingDao extends DatabaseAccessor<AppDatabase>
    with _$NonGlobalSettingDaoMixin {
  final AppDatabase db;
  NonGlobalSettingDao(this.db) : super(db);

//  Future<List<PreferenceData>> getPreferences(String prefCode) {
//    return (select(db.preference)..where((t) => t.code.equals(prefCode))).get();
//  }
//
  Future<NonGlobalSettingData> getSingleNonGlobalPref(
      String parentCode, String code, String userName, String deviceId) {
    return (select(db.nonGlobalSetting)
          ..where((u) =>
              u.code.equals(code) &
              u.parentCode.equals(parentCode) &
              (u.userName.like(userName) | u.deviceId.like(deviceId))))
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
