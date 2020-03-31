import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:j3enterprise/api_clients/api_client.dart';
import 'package:j3enterprise/database/models/users.dart';
import 'package:j3enterprise/database/query/rest_ds.dart';
import 'package:j3enterprise/services/rest_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(User user);

  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  final api = ApiClient.chopper.getService<RestApiService>();

//  RestDatasource api = new RestDatasource();
  LoginScreenPresenter(this._view);

  void doLogin(String username, String password) {
    api.login({
      "rememberClient": true,
      "userNameOrEmailAddress": username,
      "password": password
    }).then((Response response) {
      Map<String, dynamic> map = json.decode(response.bodyString);
      if (response.isSuccessful && map['success']) {
        //decode the response body
        Map<String, dynamic> result = map['result'];

        print(result['accessToken']);

        //save api token from response
        SharedPreferences.getInstance().then((prefs) {
          prefs.setString("access_token", result['accessToken']);
        });

        //get user from the user id
        _getUserById(result['userId']);
      } else {
        //display errors
        // can have an error class and use frommap here as well
        final error = map["error"];
        _view.onLoginError(error["details"]);
      }
    });
  }

  Future<dynamic> _getUserById(int userId) {
    return api.getUser(userId).then((Response response) {
      Map<String, dynamic> map = json.decode(response.bodyString);
      if (response.isSuccessful) {
        _view.onLoginSuccess(User.fromMap(map["result"]));
      }
    });
  }
}
