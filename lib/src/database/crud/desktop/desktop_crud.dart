import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/desktop_model.dart';
import 'package:moor/moor.dart';

part 'desktop_crud.g.dart';

@UseDao(tables: [Desktop])
class DesktopDao extends DatabaseAccessor<AppDatabase> with _$DesktopDaoMixin {
  final AppDatabase db;
  DesktopDao(this.db) : super(db);

  Future<List<DesktopData>> getAllDesktop() {
    return (select(db.desktop).get());
  }

   Future<void> createOrUpdatePref(DesktopData desktopData) {
    return into(db.desktop).insertOnConflictUpdate(desktopData);
  }

  Stream<List<DesktopData>> watchAllBusinessRule() {
    return (select(db.desktop).watch());
  }

  Future insertBusinessRule(DesktopData desktopData) =>
      into(db.desktop).insert(desktopData);

  Future deleteAllBusinessRule() => delete(db.desktop).go();


}
