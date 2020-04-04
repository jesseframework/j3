import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/shared/icons/custom_icons.dart';

import 'bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = new GlobalKey<FormState>();
  bool pass = true;
  String selected;
  bool isSwitched = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: _usernameController.text,
          password: _passwordController.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context)
              .showSnackBar(new SnackBar(content: new Text(state.error)));
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 100, maxWidth: 400, minHeight: 100, maxHeight: 450),
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
                              controller: _usernameController,
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
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: !pass
                                      ? Icon(CustomIcons.eye_off)
                                      : Icon(CustomIcons.eye),
                                  onPressed: () {
//                                      setState(() {
//                                        pass = !pass;
//                                      });
                                  },
                                ),
                                labelText: 'Password',
                              ),
                              obscureText: pass, // Hide password
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              hint: Text('Select applicable tenant...'),
                              decoration: InputDecoration(
                                icon: Icon(Icons.home),
                                alignLabelWithHint: false,
                                labelText: 'Tenant',
                              ),
                              value: selected,
                              items: ["Host", "Admin", "Guest"]
                                  .map((label) => DropdownMenuItem<String>(
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
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: Colors.blue.shade500,
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: state is! LoginLoading
                                  ? _onLoginButtonPressed
                                  : null,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                    color: Colors.black.withOpacity(0.2)),
                              ),
                              SizedBox(width: 10.0, height: 10),
                              Text(
                                'or',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              SizedBox(
                                width: 10.0,
                                height: 10,
                              ),
                              Expanded(
                                child: Divider(
                                    color: Colors.black.withOpacity(0.2)),
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
                                child: Icon(CustomIcons.facebook_square_brands,
                                    color: Colors.blue.shade900),
                              ),
                              Expanded(
                                child: Icon(
                                  CustomIcons.twitter_square_brands,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Expanded(
                                child: Icon(CustomIcons.envelope_solid,
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
          );
        },
      ),
    );
  }
}

//class NewWidget extends StatelessWidget {
//  const NewWidget({
//    Key key,
//    @required TextEditingController usernameController,
//    @required TextEditingController passwordController,
//  })  : _usernameController = usernameController,
//        _passwordController = passwordController,
//        super(key: key);
//
//  final TextEditingController _usernameController;
//  final TextEditingController _passwordController;
//
//  @override
//  Widget build(BuildContext context) {
//    return Form(
//      child: Column(
//        children: [
//          TextFormField(
//            decoration: InputDecoration(labelText: 'username'),
//            controller: _usernameController,
//          ),
//          TextFormField(
//            decoration: InputDecoration(labelText: 'password'),
//            controller: _passwordController,
//            obscureText: true,
//          ),
//          RaisedButton(
//            onPressed: state is! LoginLoading ? _onLoginButtonPressed : null,
//            child: Text('Login'),
//          ),
//          Container(
//            child: state is LoginLoading ? CircularProgressIndicator() : null,
//          ),
//        ],
//      ),
//    );
//  }
//}
