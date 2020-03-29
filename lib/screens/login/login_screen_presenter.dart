
import 'package:j3enterprise/database/models/users.dart';
import 'package:j3enterprise/database/query/rest_ds.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(User user);
  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  RestDatasource api = new RestDatasource();
  LoginScreenPresenter(this._view);

  doLogin(String username, String password) {
    return api.login(username, password).then((User user) {
      _view.onLoginSuccess(user);
    }).catchError((e) =>_view.onLoginError(e.toString()));
    /*
    .catchError(
      (Exception error) => 
      _view.onLoginError(error.toString())
      
      );
      */
  }
}