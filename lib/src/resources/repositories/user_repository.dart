import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/src/resources/api_clients/api_client.dart';
import 'package:j3enterprise/src/resources/services/rest_api_service.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final api = ApiClient.chopper.getService<RestApiService>();

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

  Future<void> deleteToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.remove('access_token');
  }

  Future<void> persistToken(String token) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("access_token", token);
    return;
  }

  Future<bool> hasToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.containsKey('access_token');
  }
}
