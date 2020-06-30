import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/non_global_setting.dart';
import 'package:moor/moor.dart';

part 'non_preference_crud.g.dart';

@UseDao(tables: [NonGlobalSetting])
class NonGlobalSettingDao extends DatabaseAccessor<AppDatabase>
    with _$NonGlobalSettingDaoMixin {
  final AppDatabase db;
  NonGlobalSettingDao(this.db) : super(db);


  Future<NonGlobalSettingData> getSingleNonGlobalPref(String parentCode,
      String code, String userName, String deviceId, String screen) {
    return (select(db.nonGlobalSetting)
          ..where((u) =>
              u.code.equals(code) &
              u.parentCode.equals(parentCode) &
              (u.userName.like(userName) |
                  u.deviceId.like(deviceId) |
                  u.screen.like(screen))))
        .getSingle();
  }

  Future<void> createOrUpdatePref(NonGlobalSettingData nonGlobalPref) {
    return into(db.nonGlobalSetting).insertOnConflictUpdate(nonGlobalPref);

  }

}
