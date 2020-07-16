import 'package:moor/moor.dart';

class Desktop extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get iconName => text()();
  TextColumn get iconCode => text()();
  TextColumn get iconColour => text()();
  TextColumn get iconFamily => text()();
  TextColumn get navigationRoute => text()();
  TextColumn get iconGroup => text()();
  BoolColumn get isFavorit => boolean().withDefault(Constant(false))();
  TextColumn get userPermission => text()();

  @override
  Set<Column> get primaryKey => {id};
}
