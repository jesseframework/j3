import 'dart:async';
import 'dart:convert';
import 'package:j3enterprise/src/models/users.dart';
import 'package:j3enterprise/src/resources/shared/preferences/data.dart';
import 'package:j3enterprise/src/resources/shared/utils/network_util.dart';


class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://app.j3enterprisecloud.com";
  static final LOGIN_URL = BASE_URL + "/api/TokenAuth/Authenticate";

  PrefData prefData = new PrefData();
  String _toket;


  Future<User> getUser(token, id){

     Map headers = <String,String>{
  
      "Authorization": "Bearer " + token
    };


    return _netUtil.get(BASE_URL+'/api/services/app/User/Get?id='+id.toString(), headers).then((dynamic res) {
      //print(res.toString());
      //  if(res["error"]) throw new Exception(res["error_msg"]);
      //print('getting userL ');
      //print(res);
      var saveU = User.fromMap(res["result"]);
      return saveU;
      
    });
  } 


  Future<dynamic> login(String username, String password) {

    Map headers = <String,String>{
      "Content-Type":"application/json"
    };

    var body = json.encode( {
      "rememberClient": true,
      "userNameOrEmailAddress": username,
      "password": password
    });
    return _netUtil.post(LOGIN_URL,  headers: headers, body: body).then((dynamic res) {
      //print(res.toString());
    //  if(res["error"]) throw new Exception(res["error_msg"]);
      _toket = res.toString();
      saveToken();
      return res["result"];

    });
  }

  void saveToken(){
    String token = _toket;
    prefData.saveApiToken(token).then((bool comitted) {
        print('Preference stored in phone');
    });
  }
  
}