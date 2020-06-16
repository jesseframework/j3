import 'package:moor/moor.dart';

class Tenants extends Table {
  IntColumn get id => integer()();
  TextColumn get tenant => text().nullable()();
}
