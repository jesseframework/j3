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
  // final String userName;
  // final String password;
  // final int tenant;
  // final int id;

  final UserRepository userRepository;
  var db;
  UserDao userDao;

  UserHash({@required this.userRepository}) {
    //assert(userRepository != null);
    db = AppDatabase();
    userDao = UserDao(db);
  }

  Future<void> hashashdata(
      String userName, String password, int tenant, int id) async {
    final key = Key.fromUtf8('my32lengthsupersecretnooneknows1');
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
    final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);

    List<List<int>> bytesChunks = [
      utf8.encode(encrypter.encrypt(userName).toString()),
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

    var formData = UsersCompanion(mobileHash: moor.Value(_result));

    await userDao.saveMobileHash(formData, id);
    await userRepository.putUserhasg(
        userName: userName, hashCode: _result, tenantId: 1);

    print('Result: $result');
  }
}
