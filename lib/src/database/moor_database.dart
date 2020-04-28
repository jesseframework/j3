import 'dart:io';

import 'package:j3enterprise/src/models/user_models.dart';
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
// import 'dart:io' show Platform;
// import 'dart:io' as io;

part 'moor_database.g.dart';
//part 'Comsset_crud.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Users, Comsset])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
