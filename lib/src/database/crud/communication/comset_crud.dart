import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:moor/moor.dart';

part 'comset_crud.g.dart';

@UseDao(tables: [Communication])
class CommunicationDao extends DatabaseAccessor<AppDatabase>
    with _$CommunicationDaoMixin {
  final AppDatabase db;
  CommunicationDao(this.db) : super(db);

  Future<List<CommunicationData>> getAllComsetData(CommunicationData c) {
    return (select(db.communication)
          ..where((t) => t.communicationtype.equals(c.communicationtype)))
        .get();
  }

  Future insertCommunnication(CommunicationCompanion comsset) =>
      into(db.communication).insert(comsset);
}
