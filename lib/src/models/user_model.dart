import 'package:j3enterprise/src/resources/shared/extension/must_have_tenant.dart';
import 'package:moor/moor.dart';

class Users extends Table implements MustHaveTenant {
  IntColumn get id => integer()();
  TextColumn get userName => text().withLength(min: 1, max: 100)();
  TextColumn get name => text().withLength(min: 1, max: 300)();
  TextColumn get surname => text().withLength(min: 1, max: 150)();
  TextColumn get emailAddress => text().withLength(min: 5, max: 400)();
  BoolColumn get isActive => boolean().withDefault(Constant(false))();
  TextColumn get fullName => text().withLength(min: 1, max: 300)();
  TextColumn get mobileHash => text().nullable()();
  BoolColumn get enableOfflineLogin => boolean().withDefault(Constant(false))();
  TextColumn get firebaseToken => text().nullable()();
  DateTimeColumn get creationTime => dateTime().nullable()();
  DateTimeColumn get lastLoginTime => dateTime().nullable()();
  IntColumn get tenantId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
