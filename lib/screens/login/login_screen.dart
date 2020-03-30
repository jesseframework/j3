import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/database/database_helper.dart';
import 'package:j3enterprise/database/models/users.dart';
//import 'package:j3enterprise/screens/home/hoomscreen.dart';
import 'package:j3enterprise/screens/login/login_screen_presenter.dart';
import 'package:j3enterprise/shared/icons/custom_icons.dart';
import 'package:j3enterprise/shared/utils/auth.dart';

class LoginScreen extends StatefulWidget {
//  LoginScreen({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _LoginScreenState createState() => _LoginScreenState();
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
      Navigator.of(_ctx).pushReplacementNamed("/screens/home");
  }

  String selected;
  @override
  Widget build(BuildContext context) {
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
                    child: new Form(
                      key: formKey,
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: 100,
                            maxWidth: 400,
                            minHeight: 100,
                            maxHeight: 450),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            // Add border radius
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Colors.white.withOpacity(0.8),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextFormField(
                                        onSaved: (_value) =>
                                            _username = _value.trim(),
                                        validator: (_value) {
                                          return _value.length < 3
                                              ? "Username must have at lease 4 charactor"
                                              : null;
                                        },
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.person),
                                            labelText: 'Username'),
                                      ),
                                    ),
                                    Expanded(
                                      //Fit and size widgets widgets according to container size
                                      child: TextFormField(
                                        onSaved: (val) =>
                                            _password = val.trim(),
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          suffixIcon: IconButton(
                                            icon: !pass
                                                ? Icon(CustomIcons.eye_off)
                                                : Icon(CustomIcons.eye),
                                            onPressed: () {
                                              setState(() {
                                                pass = !pass;
                                              });
                                            },
                                          ),
                                          labelText: 'Password',
                                        ),
                                        obscureText: pass, // Hide password
                                      ),
                                    ),
                                    Expanded(
                                      child: DropdownButtonFormField<String>(
                                        hint:
                                            Text('Select applicable tenant...'),
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.home),
                                          alignLabelWithHint: false,
                                          labelText: 'Tenant',
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            vertical: 10.0,
                                          ),
                                        ),
                                        value: selected,
                                        items: ["Host", "Admin", "Guest"]
                                            .map((label) =>
                                                DropdownMenuItem<String>(
                                                  child: Text(label),
                                                  value: label,
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            selected = value;
                                          });
                                        },
                                      ),
                                      // child: TextFormField(
                                      //   keyboardType:
                                      //       TextInputType.numberWithOptions(
                                      //           decimal: false),
                                      //   decoration: InputDecoration(
                                      //       icon: Icon(Icons.home),
                                      //       labelText: 'Tenant'),
                                      // ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          CustomIcons.pushpin,
                                          color: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Pin Only",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ),
                                        Switch(
                                          value: isSwitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched = value;
                                              print(isSwitched);
                                            });
                                          },
                                          activeColor: Colors.black,
                                        ),
                                      ],
                                    ),
                                    _isLoading
                                        ? new CircularProgressIndicator()
                                        : ButtonTheme(
                                            minWidth: double.infinity,
                                            child: RaisedButton(
                                                color: Colors.blue.shade500,
                                                child: Text(
                                                  'Login',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: _submit),
                                          ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          child: Divider(
                                              color: Colors.black
                                                  .withOpacity(0.2)),
                                        ),
                                        SizedBox(width: 10.0, height: 10),
                                        Text(
                                          'or',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(.5)),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                          height: 10,
                                        ),
                                        Expanded(
                                          child: Divider(
                                              color: Colors.black
                                                  .withOpacity(0.2)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Icon(
                                            CustomIcons.google_brands,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Expanded(
                                          child: Icon(
                                              CustomIcons
                                                  .facebook_square_brands,
                                              color: Colors.blue.shade900),
                                        ),
                                        Expanded(
                                          child: Icon(
                                            CustomIcons.twitter_square_brands,
                                            color: Colors.blue.shade500,
                                          ),
                                        ),
                                        Expanded(
                                          child: Icon(
                                              CustomIcons.envelope_solid,
                                              color: Colors.orange),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
