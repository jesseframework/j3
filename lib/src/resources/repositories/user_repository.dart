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

  Future<Response> putUserHash({
    @required int userId,
    @required String mobileHashCode,
    @required int tenantId,
  }) async {
    return await api.updateUserHash({
      "userID": userId,
      "mobileHashCode": mobileHashCode,
      "tenantId": tenantId
    });
  }

  Future<Response> checkTenant({@required String tenancyName}) async {
    return await api.isTenantAvailable({"tenancyName": tenancyName});
  }

  Future<void> deleteToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.remove('access_token');
    await _prefs.remove('userId');
    await _prefs.remove('tenantid');
    return;
  }

  Future<void> persistToken(String token, int userId, int tenantid) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("access_token", token);
    await _prefs.setString("userId", userId.toString());
    await _prefs.setString("tenantid", tenantid.toString());
    return;
  }

  Future<void> setTanantIntoSharedPref(String tenatName) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('tenatName', tenatName);
    return;
  }

  Future<void> setDeviceIntoSharedPref(String deviceId, String state) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('deviceId', deviceId);
    await _prefs.setString('state', state);
    return;
  }

  Future<String> getTanantFromSharedPref() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String result = await _prefs.get('tenatName');
    return result;
  }

  Future<bool> hasToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.containsKey('access_token');
  }

  Future<Map> getPrefrenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = await prefs.get("access_token");
    int userId = int.tryParse(await prefs.get("userId"));
    int tenantid = int.tryParse(await prefs.get("tenantid"));

    Map<String, String> map = {
      "token": "$token",
      "userId": "$userId",
      "tenantid": "$tenantid",
    };

    return map;
  }
}
