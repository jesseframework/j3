import 'dart:async';
import 'dart:convert';
import 'package:j3enterprise/database/models/users.dart';
import 'package:j3enterprise/shared/preferences/data.dart';
import 'package:j3enterprise/shared/utils/network_util.dart';


class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://app.j3enterprisecloud.com";
  static final LOGIN_URL = BASE_URL + "/api/TokenAuth/Authenticate";
  //static final _API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYWRtaW4iLCJBc3BOZXQuSWRlbnRpdHkuU2VjdXJpdHlTdGFtcCI6ImQ1ZTQ3M2JmLWJhMWQtNzA4YS00Yzg5LTM5ZjQzMGUyMGZjMCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkFkbWluIiwic3ViIjoiMSIsImp0aSI6IjdmNDRkYmFhLTllYmEtNDdlYi05MmQwLTk3MWE0YWRlZWRhYyIsImlhdCI6MTU4NTUwMjAzOSwibmJmIjoxNTg1NTAyMDM5LCJleHAiOjE1ODU1ODg0MzksImlzcyI6IkozV2ViIiwiYXVkIjoiSjNXZWIifQ.YnpnS1r7fg_QVJjt9aMY0zr5rF3VfBnUOhakUeFajW0";
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