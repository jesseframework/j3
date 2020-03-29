import 'package:j3enterprise/database/database_helper.dart';
import 'package:j3enterprise/database/models/users.dart';
import 'package:sqflite/sqflite.dart';

class LoginData{

  DatabaseHelper dbq = new DatabaseHelper();  
  static Database _db;  

  Future<Database> get db async {
    if(_db != null)
      return _db;
    _db = await dbq.initDb();
    return _db;
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