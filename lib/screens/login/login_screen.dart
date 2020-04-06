import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/database/models/users.dart';
import 'package:j3enterprise/login/login_form.dart';
//import 'package:j3enterprise/screens/home/hoomscreen.dart';
import 'package:j3enterprise/screens/login/login_screen_presenter.dart';
import 'package:j3enterprise/shared/utils/auth.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _LoginScreenState();
  }
}

//fawzanm@gmail.com
class _LoginScreenState extends State<LoginScreen>
    implements LoginScreenContract, AuthStateListener {
  bool isSwitched = false;
  bool pass = true;
  BuildContext _ctx;

  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  static String _username = "admin";
  static String _password = "123qwe";

  LoginScreenPresenter _presenter;

  @override
  void initState() {
    super.initState();

    loginScreenState();
  }

  loginScreenState() {
    _presenter = new LoginScreenPresenter(this);
    var authStateProvider = new AuthStateProvider();
    authStateProvider.subscribe(this);
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() => _isLoading = true);
      form.save();

      _presenter.doLogin(_username, _password);
    }
  }

  void _showSnackBar(String text) {
    Scaffold.of(context)
        //scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(text)));
  }

  @override
  onAuthStateChanged(AuthState state) {
    if (state == AuthState.LOGGED_IN)
      Navigator.of(_ctx).pushReplacementNamed("/home");
  }

  String selected;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            'images/beach-background.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    //Works like bootstrap with 12 columns (works for rows as well) max 10
                    flex: 3,
                    child: Container(
                      child: Image.asset(
                        'images/logo.png',
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: LoginForm(),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  void onLoginError(String errorTxt) {
    print('Cannot login');
    _showSnackBar(errorTxt);
    setState(() => _isLoading = false);
  }

  @override
  void onLoginSuccess(User user) async {
    _showSnackBar(user.toString());
    setState(() => _isLoading = false);
    // var db = new DatabaseHelper();
    // await db.saveUser(user);
    var authStateProvider = new AuthStateProvider();
    authStateProvider.notify(AuthState.LOGGED_IN);
  }
}

class DropWid extends StatefulWidget {
  final String list;

  DropWid(this.list);

  @override
  _DropWidState createState() => _DropWidState();
}

class _DropWidState extends State<DropWid> {
  String selecteditem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: DropdownButton(
          isExpanded: true,
          onChanged: (value) {
            setState(() {
              selecteditem = value;
            });
          },
          value: selecteditem,
          items: [
            DropdownMenuItem(
              child: Text('French'),
              value: 'French',
            ),
            DropdownMenuItem(
              child: Text(widget.list),
              value: widget.list,
            )
          ],
        ),
      ),
    );
  }
}
