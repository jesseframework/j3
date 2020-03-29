import 'dart:io' as io;
import 'package:j3enterprise/database/models/users.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DatabaseHelper{
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  

  Future<Database> get db async {
    if(_db != null)
      return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  Future<Database> initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "J3EntDb.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }
  

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
    "CREATE TABLE User(id INTEGER PRIMARY KEY, " +
                        "AccessFailedCount INT, " +
                        "AuthenticationSource TEXT," +
                        "ConcurrencyStamp TEXT, " +
                        "CreationTime DATETIME," +
                        "CreatorUserId INT, " +
                        "DeleterUserId INT," +
                        "DeletionTime DATETIME, " +
                        "EmailAddress TEXT," +
                        "EmailConfirmationCode TEXT," +
                        "IsActive INT," +
                        "IsDeleted INT," +
                        "IsEmailConfirmed INT," +
                        "IsLockoutEnabled INT, " +
                        "IsPhoneNumberConfirmed INT," +
                        "IsTwoFactorEnabled INT, " +
                        "LastModificationTime DATETIME," +
                        "LastModifierUserId INT, " +
                        "LockoutEndDateUtc DATETIME," +
                        "Name TEXT, " +
                        "NormalizedEmailAddress TEXT," +
                        "NormalizedUserName TEXT, " +
                        "password TEXT," +
                        "PasswordResetCode TEXT, " +
                        "PhoneNumber TEXT," +
                        "SecurityStamp TEXT, " +
                        "Surname TEXT, " +
                        "TenantId TEXT, " +
                        "UserName TEXT)");
    print("Created tables");
  }
Future<int> saveUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.insert("User", user.toMap());
    return res;
  }

  Future<int> deleteUsers() async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

  Future<bool> isLoggedIn() async {
    var dbClient = await db;
    var res = await dbClient.query("User");
    return res.length > 0? true: false;
  }
}
