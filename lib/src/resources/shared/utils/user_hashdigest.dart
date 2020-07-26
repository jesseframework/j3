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

import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';

import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:moor/moor.dart' as moor;

class UserHash {
  final UserRepository userRepository;
  UserDao userDao;
  var db;

  UserHash({@required this.userRepository}) {
    //assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
  }

  Future<String> createHash(String password, int tenantId, int userId) async {
    List<List<int>> bytesChunks = [
      utf8.encode(password),
      utf8.encode(userId.toString()),
      utf8.encode(tenantId.toString())
    ];

    var output = new AccumulatorSink<Digest>();

    ByteConversionSink input = sha512.startChunkedConversion(output);
    bytesChunks.forEach((List<int> bytes) {
      input.add(bytes);
    });
    input.close();

    Digest result = output.events.single;

    String _result = result.toString();
    //return _result;
    print('Created Hash ' + _result);
    return _result;
  }
}

class UserHashSave {
  final UserRepository userRepository;
  var db;
  UserDao userDao;
  UserHash userHash;

  UserHashSave({@required this.userRepository}) {
    //assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
    userHash = new UserHash(userRepository: userRepository);
  }
  Future<void> saveHash(String password, int tenantId, int userId) async {
    String _result = await userHash.createHash(password, tenantId, userId);
    print('MyKey ' + _result.toString());
    var formData = UsersCompanion(mobileHash: moor.Value(_result.toString()));

    await userDao.saveMobileHash(formData, userId);
    await userRepository.putUserHash(
        userId: userId, mobileHashCode: _result.toString(), tenantId: tenantId);

    print('Result: $_result');
  }
}
