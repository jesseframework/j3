import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';

class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get userName => text().withLength(min:1,max: 100)();
  TextColumn get name => text().withLength(min:1,max: 300)();
  TextColumn get surname => text().withLength(min:1,max: 150)();
  TextColumn get emailAddress => text().withLength(min:5, max:400)() ;
  BoolColumn get isActive => boolean().withDefault(Constant(false))();
  TextColumn get fullName => text().withLength(min:1, max:300)();
  TextColumn get lastLoginTime => text().nullable()();
  TextColumn get creationTime => text().nullable()();
}