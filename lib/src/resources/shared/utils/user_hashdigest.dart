import 'package:crypto/crypto.dart';
  import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart';
  import 'dart:convert';

import 'package:moor/moor.dart';
  

  
  class UserHash {
    final String userName;
    final String password;
    final String tenant;
    
  
  
    UserHash({@required this.userName, @required  this.password,@required  this.tenant});

    Future<void> hashuserdata() {
      final key = Key.fromUtf8('my32lengthsupersecretnooneknows1');
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes));
      final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);

    List<List<int>> bytesChunks = [
      utf8.encode(encrypter.encrypt(userName).toString()),
      utf8.encode(encrypter.encrypt(password).toString()),
      utf8.encode(encrypter.encrypt(tenant).toString())
    ];
  
    var output = new AccumulatorSink<Digest>();
  
    ByteConversionSink input = sha512.startChunkedConversion(output);
    bytesChunks.forEach((List<int> bytes) { input.add(bytes); });
    input.close();
  
    Digest result = output.events.single;

    
  
    print('Result: $result');
  }
  }
  
  