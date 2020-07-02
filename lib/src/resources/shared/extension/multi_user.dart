import 'package:moor/moor.dart';

mixin MultiUser implements Table {
  TextColumn get uerName => text()();
  IntColumn get userId => integer()();
  IntColumn get tenantId => integer()();


}
