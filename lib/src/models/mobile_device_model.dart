import 'package:j3enterprise/src/resources/shared/extension/full_audited.dart';
import 'package:j3enterprise/src/resources/shared/extension/sync_trigger.dart';
import 'package:moor/moor.dart';

class MobileDevice extends Table implements FullAudited, SyncTrigger {
  TextColumn get deviceId => text().nullable()();
  TextColumn get deviceName => text().nullable()();
  TextColumn get versionRelease => text().nullable()();
  TextColumn get versionEnvrement => text().nullable()();
  TextColumn get bootLoader => text().nullable()();
  TextColumn get manufacture => text().nullable()();
  TextColumn get model => text().nullable()();
  IntColumn get sdkNumber => integer().nullable()();
  TextColumn get hardware => text().nullable()();
  TextColumn get deviceHost => text().nullable()();
  DateTimeColumn get deviceTime => dateTime().nullable()();
  TextColumn get deviceSerial => text().nullable()();
  TextColumn get deviceMac => text().nullable()();
  TextColumn get deviceIp => text().nullable()();
  TextColumn get deviceMode => text().nullable()();
  DateTimeColumn get activationDate => dateTime().nullable()();
  DateTimeColumn get expirationDate => dateTime().nullable()();
  IntColumn get deviceStatus => integer().nullable()();
  TextColumn get companyName => text().nullable()();
  TextColumn get deviceNickName => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();

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
  Set<Column> get primaryKey => {deviceId};
}
