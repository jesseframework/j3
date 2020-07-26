/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:moor/moor.dart' as moor;
import 'package:quiver/strings.dart';

class UserFromServer {
  final UserRepository userRepository;
  var db;
  bool isofflineready = false;
  UserDao userDao;
  UserFromServer({this.userRepository}) {
    assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
  }
  Future<bool> validateUser(int id, int tenantId) async {
    final Response response = await userRepository.getUser(userID: id);
    Map<String, dynamic> map = json.decode(response.bodyString);
    if (response.isSuccessful && map['success']) {
      Map<String, dynamic> result = map['result'];

      //ToDo Implement LastLoOn from APB
      var formData = UsersCompanion(
          fullName: moor.Value(result['fullName']),
          emailAddress: moor.Value(result['emailAddress']),
          surname: moor.Value(result['surname']),
          userName: moor.Value(result['userName']),
          id: moor.Value(result['id']),
          tenantId: moor.Value(tenantId),
          name: moor.Value(result['name']),
          enableOfflineLogin: moor.Value(result['enableOfflineLogin']),
          mobileHash: moor.Value(result['mobileHashCode']),
          isActive: moor.Value(result['isActive']),
          creationTime: moor.Value(DateTime.parse(result['creationTime'])));

      var isUserInDb = await userDao.getSingleUser(id);
      if (isUserInDb != null) {
        print('User Already in Db');

        //We will check server for mobilehash everytime user logon to mobile device.
        //if (routeinfo["no_route"]?.isEmpty ?? true)
        if (isBlank(isUserInDb.mobileHash) &&
            isUserInDb.enableOfflineLogin == true) {
          isofflineready = true;
        } else {
          isofflineready = false;
          await userDao.updateUser(formData, id);
        }
      } else {
        print('Create new user');
        //User must login for first time for offline login to work
        await userDao.insertUser(formData);
        print('insert uerr success');
      }
    }

    return isofflineready;
  }
}
