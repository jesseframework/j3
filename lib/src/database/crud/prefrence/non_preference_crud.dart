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
}
