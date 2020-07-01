import 'package:moor/moor.dart';

mixin FullAudited implements Table {
  DateTimeColumn get creationTime => dateTime()();
  DateTimeColumn get deleteTime => dateTime()();
  IntColumn get createUserId => integer()();
  TextColumn get creatorUser => text()();
  TextColumn get lastModifierUser => text()();
  IntColumn get lastModifierUserId => integer()();
  IntColumn get deleteUserId => integer()();
  TextColumn get deleterUserId => text()();
  BoolColumn get isDeleted => boolean()();



}
