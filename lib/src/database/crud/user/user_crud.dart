import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/models/user_model.dart';
import 'package:moor/moor.dart';

part 'user_crud.g.dart';

@UseDao(tables: [Users])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  final AppDatabase db;
  UserDao(this.db) : super(db);

  Future<User> getSingleUser(int id) {
    return (select(db.users)..where((u) => u.id.equals(id))).getSingle();
  }

  Future<List<User>> getAllUsers() => select(db.users).get();
  Stream<List<User>> watchAllUsers() => select(db.users).watch();
  Future insertUser(UsersCompanion user) => into(db.users).insert(user);
  Future updateUser(UsersCompanion user) => update(db.users).replace(user);
  //Wipe user table
  Future deleteUser(User user) => delete(db.users).delete(user);
}
