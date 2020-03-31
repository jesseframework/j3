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

  doLogin(String username, String password) {
    return api.login({
      "rememberClient": true,
      "userNameOrEmailAddress": username,
      "password": password
    }).then((Response response) {
      Map<String, dynamic> map = json.decode(response.bodyString);
      if (response.isSuccessful) {
        //decode the response body
        Map<String, dynamic> result = map['result'];

        print(result['accessToken']);

        //save api token from response
        SharedPreferences.getInstance().then((prefs) {
          prefs.setString("access_token", result['accessToken']);
        });

        //get user from the user id
        api.getUser(result['userId']).then((Response response) {
          Map<String, dynamic> map = json.decode(response.bodyString);
          if (response.isSuccessful) {
            var saveU = User.fromMap(map["result"]);
            print(saveU);
            _view.onLoginSuccess(saveU);
          }
        });
      } else {
        //display errors
        _view.onLoginError(map["error"].toString());
      }
    });
  }
}
