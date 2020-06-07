import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:moor/moor.dart' as moor;

class UserFromServer {
  final UserRepository userRepository;

  var db;
  UserDao userDao;
  UserFromServer({this.userRepository}) {
    assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
  }
  Future<void> validateUser(int id) async {
    final Response response = await userRepository.getUser(userID: id);
    Map<String, dynamic> map = json.decode(response.bodyString);
    if (response.isSuccessful && map['success']) {
      Map<String, dynamic> result = map['result'];
      //var saveDb = User.fromJson(result);
      //yield AuthenticationAndSaveUser();
      //ToDo Implement LastLoOn from APB
      var formData = UsersCompanion(
          fullName: moor.Value(result['fullName']),
          emailAddress: moor.Value(result['emailAddress']),
          surname: moor.Value(result['surname']),
          userName: moor.Value(result['userName']),
          id: moor.Value(result['id']),
          name: moor.Value(result['name']),
          enableOfflineLogin: moor.Value(result['enableOfflineLogin']),
          isActive: moor.Value(result['isActive']),
          creationTime: moor.Value(DateTime.parse(result['creationTime'])));

      var isUserInDb = await userDao.getSingleUser(id);
      if (isUserInDb != null) {
        print('User Already in Db');
        await userDao.updateUser(formData, id);
      } else {
        print('Create new user');
        await userDao.insertUser(formData);
      }
    }
  }
}
