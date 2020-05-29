import 'package:j3enterprise/src/resources/shared/extension/full_audited.dart';
import 'package:moor/moor.dart';

class Users extends Table implements FullAudited {
  IntColumn get id => integer()();
  TextColumn get userName => text().withLength(min: 1, max: 100)();
  TextColumn get name => text().withLength(min: 1, max: 300)();
  TextColumn get surname => text().withLength(min: 1, max: 150)();
  TextColumn get emailAddress => text().withLength(min: 5, max: 400)();
  BoolColumn get isActive => boolean().withDefault(Constant(false))();
  TextColumn get fullName => text().withLength(min: 1, max: 300)();
  TextColumn get mobileHash => text().withLength(min: 1, max: 300)();
  BoolColumn get enableOfflineLogin => boolean().withDefault(Constant(false))();
  IntColumn get createUserId => integer().nullable()();
  DateTimeColumn get creationTime => dateTime().nullable()();
  DateTimeColumn get deleteTime => dateTime().nullable()();
  IntColumn get deleteUserId => integer().nullable()();
  TextColumn get creatorUser => text().nullable()();
  TextColumn get deleterUserId => text().nullable()();
  BoolColumn get isDeleted => boolean().withDefault(Constant(false))();
  TextColumn get lastModifierUser => text().nullable()();
  IntColumn get lastModifierUserId => integer().nullable()();
}
