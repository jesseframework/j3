import 'dart:async';
import 'package:j3enterprise/database/models/users.dart';
import 'package:j3enterprise/shared/utils/network_util.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://j3enterprisecloud.com";
  static final LOGIN_URL = BASE_URL + "/api/TokenAuth/Authenticate";
  static final _API_KEY = "somerandomkey";

  Future<User> login(String username, String password) {
    return _netUtil.post(LOGIN_URL, body: {
      "token": _API_KEY,
      "username": username,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.fromMap(res["user"]);
    });
  }
}