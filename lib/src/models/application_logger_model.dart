import 'package:j3enterprise/src/resources/shared/extension/multi_user.dart';
import 'package:j3enterprise/src/resources/shared/extension/must_have_tenant.dart';
import 'package:j3enterprise/src/resources/shared/extension/sync_trigger.dart';
import 'package:moor/moor.dart';

class ApplicationLogger extends Table
    implements MustHaveTenant, MultiUser, SyncTrigger {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get functionName => text()();
  DateTimeColumn get startDateTime => dateTime()();
  TextColumn get syncFrequency => text()();
  TextColumn get logDescription => text()();
  TextColumn get documentNo => text()();
  TextColumn get logCode => text()();
  TextColumn get logSeverity => text()();
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
  IntColumn get tenantId => integer().nullable()();
  TextColumn get uerName => text().nullable()();
  IntColumn get userId => integer().nullable()();
}
