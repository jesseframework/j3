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

  Future<User> getSingleByName(int id) {
    return (select(db.users)..where((u) => u.id.equals(id))).getSingle();
  }

  Future<User> getSingleUserByUserName(String userName) {
    return (select(db.users)..where((u) => u.userName.equals(userName)))
        .getSingle();
  }

  Future<User> getSingleTenantUser(String userName, int tenantId) {
    return (select(db.users)
          ..where(
              (u) => u.userName.equals(userName) & u.tenantId.equals(tenantId)))
        .getSingle();
  }

  Future updateUser(UsersCompanion u, int id) {
    return (update(db.users)..where((t) => t.id.equals(id))).write(
      UsersCompanion(
        fullName: u.fullName,
        name: u.name,
        emailAddress: u.emailAddress,
        surname: u.surname,
        userName: u.userName,
        id: u.id,
        enableOfflineLogin: u.enableOfflineLogin,
        isActive: u.isActive,
        creationTime: u.creationTime,
      ),
    );
  }

  Future saveMobileHash(UsersCompanion u, int id) {
    return (update(db.users)..where((t) => t.id.equals(id))).write(
      UsersCompanion(
        mobileHash: u.mobileHash,
      ),
    );
  }

  Future<List<User>> getAllUsers() => select(db.users).get();
  Stream<List<User>> watchAllUsers() => select(db.users).watch();
  Future insertUser(UsersCompanion user) => into(db.users).insert(user);

  //Wipe user table
  Future deleteAllUser() => delete(db.users).go();
}
