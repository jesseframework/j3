import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  var api = ApiClient.chopper.getService<RestApiService>();

  Future<Response> authenticate({
    @required String username,
    @required String password,
  }) async {
    return await api.login({
      "rememberClient": true,
      "userNameOrEmailAddress": username,
      "password": password
    });
  }

  Future<Response> getUser({@required int userID}) async {
    return await api.getUser(userID);
  }

  Future<Response> putUserhasg({
    @required String userName,
    String emailAddress,
    @required String hashCode,
    @required int tenantId,
  }) async {
    return await api.createUserHash({
      "userName": userName,
      "emailAddress": emailAddress,
      "hashCode": hashCode,
      "tenantId": tenantId
    });
  }

  Future<void> deleteToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.remove('access_token');
    await _prefs.remove('id');
    await _prefs.remove('tenantid');
    return;
  }

  Future<void> persistToken(String token, int id, int tenantid) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("access_token", token);
    await _prefs.setString("id", id.toString());
    await _prefs.setString("tenantid", tenantid.toString());
    return;
  }

  Future<bool> hasToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.containsKey('access_token');
  }

  Future<Map> getPrefrenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = await prefs.get("access_token");
    int id = int.tryParse(await prefs.get("id"));
    int tenantid = int.tryParse(await prefs.get("tenantid"));

    Map<String, String> map = {
      "token": "$token",
      "id": "$id",
      "tenantid": "$tenantid",
    };

    return map;
  }
}
