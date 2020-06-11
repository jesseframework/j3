import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:cryptor/cryptor.dart';
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

//    final plainText = password + tenant.toString() + userId.toString();
//    final key = Key.fromUtf8('rel01x6kfctgcwbffhu9tnr3s88uyhrv');
//
//    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
//    // if you need to use the ttl feature, you'll need to use APIs in the algorithm itself
//    final ferNet = Fernet(b64key);
//    final setEncryption = Encrypter(ferNet);
//
//    final encrypted = setEncryption.encrypt(plainText);
//    final decrypted = setEncryption.decrypt(encrypted);

//    final plainText = password + tenant.toString() + userId.toString();
//    final b64key = 'rel01x6kfctgcwbffhu9tnr3s88uyhrv';
//
//    final encrypted = Cryptor.encrypt(plainText, b64key);
//    final decrypted = Cryptor.decrypt(encrypted, b64key);
//
//    print(encrypted);
//    print(decrypted);
//    print('Data To Hash ' + encrypted); // random cipher text
//    print('Decripted Hash ' + decrypted.toString()); // random cipher text

//    print('Data To Hash ' + encrypted.base64); // random cipher text
//    print('Decripted Hash ' + decrypted.toString()); // random cipher text
    //print(ferNet.extractTimestamp(encrypted.bytes)); // unix timestamp

    List<List<int>> bytesChunks = [
      utf8.encode(password),
     utf8.encode(userId.toString()),
     utf8.encode(tenant.toString())
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
  Future<void> saveHash(String password, int tenant, int userId) async {
    String _result = await userHash.createHash(password, tenant, userId);
    print('MyKey ' + _result.toString());
    var formData = UsersCompanion(mobileHash: moor.Value(_result.toString()));

    await userDao.saveMobileHash(formData, userId);
    await userRepository.putUserHash(
        userId: userId, mobileHashCode: _result.toString(), tenantId: 1);

    print('Result: $_result');
  }
}
