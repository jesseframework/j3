import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/mobile_device_model.dart';
import 'package:moor/moor.dart';

part 'mobile_device_crud.g.dart';

@UseDao(tables: [MobileDevice])
class MobileDeviceDao extends DatabaseAccessor<AppDatabase>
    with _$MobileDeviceDaoMixin {
  final AppDatabase db;
  MobileDeviceDao(this.db) : super(db);

  Future<List<MobileDeviceData>> getAllMobileDevice() {
    return (select(db.mobileDevice).get());
  }

  Stream<List<MobileDeviceData>> watchAllMobileDevice() {
    return (select(db.mobileDevice).watch());
  }

  Future insertMobileDevice(MobileDeviceData mobileDeviceData) =>
      into(db.mobileDevice).insert(mobileDeviceData);

  Future deleteAllBusinessRule() => delete(db.businessRule).go();
}
