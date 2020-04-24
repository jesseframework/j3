import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/communication_model.dart';
import 'package:moor/moor.dart';

part 'comset_crud.g.dart';
@UseDao(tables: [Comsset])
 class ComssetDao extends DatabaseAccessor<AppDatabase> with _$ComssetDaoMixin {
   final AppDatabase db;
   ComssetDao(this.db) : super(db);

        
    Future<List<ComssetData>> getAllComsetData(ComssetData c) {
      return (select(comsset)..where((t) => t.commtype.equals(c.commtype))).get();
    }

    Future insertUser(ComssetData comsset) => into(db.comsset).insert(comsset);
    


 }