import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart';
import 'package:j3enterprise/src/database/crud/user/user_crud.dart';
import 'package:j3enterprise/src/database/moor_database.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';

import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:moor/moor.dart' as moor;

class UserHash {
  final UserRepository userRepository;
  var db;
  UserDao userDao;

  UserHash({@required this.userRepository}) {
    //assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
  }

  Future<String> createHash(String password, int tenant, int userId) async {
    final key = Key.fromUtf8('my32lengthsupersecretnooneknows1');
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
    final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);

    List<List<int>> bytesChunks = [
      utf8.encode(encrypter.encrypt(userId.toString()).toString()),
      utf8.encode(encrypter.encrypt(password).toString()),
      utf8.encode(encrypter.encrypt(tenant.toString()).toString())
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
  Future<void> savehash(String password, int tenant, int userId) async {
    String _result = await userHash.createHash(password, tenant, userId);
    print('MyKey ' + _result.toString());
    var formData = UsersCompanion(mobileHash: moor.Value(_result.toString()));

    await userDao.saveMobileHash(formData, userId);
    await userRepository.putUserhasg(
        userId: userId, mobileHashCode: _result.toString(), tenantId: 1);

    print('Result: $_result');
  }
}
