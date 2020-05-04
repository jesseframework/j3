import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:moor/moor.dart';

part 'communication_setup_crud.g.dart';

@UseDao(tables: [Communication])
class CommunicationDao extends DatabaseAccessor<AppDatabase>
    with _$CommunicationDaoMixin {
  final AppDatabase db;
  CommunicationDao(this.db) : super(db);
//Get communication
  Future<List<CommunicationData>> getCommunicationDataByType(
      String communicationType) {
    return (select(db.communication)
          ..where((t) => t.communicationType.equals(communicationType)))
        .get();
  }

  //Update communication
  Future updateERPCommunnication(CommunicationCompanion comsset) {
    return (update(db.communication)
          ..where((t) => t.communicationType.equals('ERP')))
        .write(
      CommunicationCompanion(
          typeofErp: comsset.typeofErp,
          serverUrl: comsset.serverUrl,
          userName: comsset.userName,
          newPasskey: comsset.newPasskey,
          confirmPasskey: comsset.confirmPasskey,
          syncFrequency: comsset.syncFrequency),
    );
  }

  Future updateAPICommunnication(CommunicationCompanion comsset) {
    return (update(db.communication)
          ..where((t) => t.communicationType.equals('API')))
        .write(
      CommunicationCompanion(
          serverUrl: comsset.serverUrl,
          userName: comsset.userName,
          newPasskey: comsset.newPasskey,
          confirmPasskey: comsset.confirmPasskey,
          syncFrequency: comsset.syncFrequency),
    );
  }

//Create communication
  Future insertCommunnication(CommunicationCompanion comsset) =>
      into(db.communication).insert(comsset);

//Wipe communication table
  Future deleteAllCommuniction(CommunicationCompanion comsset) =>
      delete(db.communication).delete(comsset);
}
