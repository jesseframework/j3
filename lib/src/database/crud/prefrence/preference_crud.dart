import 'package:easy_localization/easy_localization.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/preference_model.dart';
import 'package:moor/moor.dart';

part 'preference_crud.g.dart';

@UseDao(tables: [Preference])
class PreferenceDao extends DatabaseAccessor<AppDatabase>
    with _$PreferenceDaoMixin {
  final AppDatabase db;
  PreferenceDao(this.db) : super(db);

  Future<List<PreferenceData>> getPreferences(String prefCode) {
    return (select(db.preference)..where((t) => t.code.equals(prefCode))).get();
  }

  Future<PreferenceData> getSinglePreferences(String prefCode) {
    return (select(db.preference)..where((u) => u.code.equals(prefCode)))
        .getSingle();
  }

  Future<List<PreferenceData>> getAllPreferences() {
    return (select(db.preference).get());
  }

  Stream<List<PreferenceData>> watchAllPreferences() {
    return (select(db.preference).watch());
  }

  Future insertPreferences(PreferenceData preferenceData) =>
      into(db.preference).insert(preferenceData);

  Future<void> createOrUpdatePref(PreferenceData pref) {
    return into(db.preference).insertOnConflictUpdate(pref);

  }

   Future insertOrUpdate(PreferenceData preferenceData) {
    return (into(db.preference)         
        .insertOnConflictUpdate(
      PreferenceData(code: preferenceData.code,
      preferenceName: preferenceData.preferenceName,
      value: preferenceData.value,
      description: preferenceData.description,
      domain: preferenceData.domain,
      isGlobal: preferenceData.isGlobal,
      expiredDateTime: DateTime.parse(DateFormat('yyyy-MM-dd hh:mm:ss').format(preferenceData.expiredDateTime)),
      tenantId: preferenceData.tenantId,
      id: preferenceData.id
          ),
    ));
  }
    
  Future deleteAllPreferences() => delete(db.preference).go();
}
