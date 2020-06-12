import 'package:j3enterprise/src/resources/shared/extension/full_audited.dart';
import 'package:j3enterprise/src/resources/shared/extension/sync_trigger.dart';
import 'package:moor/moor.dart';

class Prefrence extends Table implements FullAudited, SyncTrigger {
  TextColumn get code => text()();
  TextColumn get prefrenceName => text().nullable()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();
  TextColumn get domain => text().nullable()();

  IntColumn get createUserId => integer().nullable()();
  DateTimeColumn get creationTime => dateTime().nullable()();
  DateTimeColumn get deleteTime => dateTime().nullable()();
  IntColumn get deleteUserId => integer().nullable()();
  TextColumn get creatorUser => text().nullable()();
  TextColumn get deleterUserId => text().nullable()();
  BoolColumn get isDeleted => boolean().withDefault(Constant(false))();
  TextColumn get lastModifierUser => text().nullable()();
  IntColumn get lastModifierUserId => integer().nullable()();
  DateTimeColumn get exportDateTime => dateTime().nullable()();
  TextColumn get exportStatus => text().withDefault(Constant('Pending'))();
  DateTimeColumn get importDateTime => dateTime().nullable()();
  TextColumn get importStatus => text().withDefault(Constant('Pending'))();
  TextColumn get syncError => text().nullable()();

  @override
  Set<Column> get primaryKey => {code};
}
