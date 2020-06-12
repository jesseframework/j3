import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/ui/preferences/preferences.dart';
import 'package:moor/moor.dart';

part 'prefrence_crud.g.dart';

@UseDao(tables: [Preferences])
class PreferencesDao extends DatabaseAccessor<AppDatabase>
    with _$PreferencesDaoMixin {
  final AppDatabase db;
  PreferencesDao(this.db) : super(db);

  Future<List<PrefrenceData>> getAllPreferences() {
    return (select(db.prefrence).get());
  }

  Stream<List<PrefrenceData>> watchAllPreferences() {
    return (select(db.prefrence).watch());
  }

  Future insertPreferences(PrefrenceData prefrenceData) =>
      into(db.prefrence).insert(prefrenceData);

  Future deleteAllPreferences() => delete(db.prefrence).go();
}
