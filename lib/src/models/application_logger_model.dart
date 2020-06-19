import 'package:j3enterprise/src/resources/shared/extension/multi_user.dart';
import 'package:j3enterprise/src/resources/shared/extension/must_have_tenant.dart';
import 'package:moor/moor.dart';

class ApplicationLogger extends Table implements MustHaveTenant, MultiUser {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get functionName => text()();
  DateTimeColumn get logDateTime => dateTime()();
  TextColumn get syncFrequency => text()();
  TextColumn get logDescription => text()();
  TextColumn get documentNo => text()();
  TextColumn get deviceId => text()();
  TextColumn get logCode => text()();
  TextColumn get logSeverity => text()();
  DateTimeColumn get exportDateTime => dateTime().nullable()();
  TextColumn get exportStatus => text().withDefault(Constant('Pending'))();
  TextColumn get syncError => text().nullable()();
  IntColumn get tenantId => integer().nullable()();
  TextColumn get uerName => text().nullable()();
  IntColumn get userId => integer().nullable()();
}
