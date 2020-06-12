import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/login/bloc/login_bloc.dart';

import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

class OfflineLoginForm extends StatefulWidget {
  @override
  State<OfflineLoginForm> createState() => _OfflineLoginFormState();
}

class _OfflineLoginFormState extends State<OfflineLoginForm> {
  //final UserRepository userRepository;
  final formKey = new GlobalKey<FormState>();
  bool pass = true;
  String selected;
  bool isSwitched = false;
  Map<String, String> mappref = Map();
  UserRepository userRepository = new UserRepository();
  bool showPassword = true;

  //ToDo Iplment global passowrd box and setup from validation

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfimController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() async {
      formKey.currentState.validate();

      mappref = await userRepository.getPrefrenceData();
      BlocProvider.of<AuthenticationBloc>(context).add(
        OfflineLoginButtonPressed(
            userId: int.tryParse(mappref['userId']),
            password: _passwordController.text,
            tenantId: int.tryParse(mappref['tenantid'])),
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
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        color: Colors.yellow.withOpacity(0.8),
                        constraints: BoxConstraints(
                            minWidth: 100,
                            maxWidth: 380,
                            minHeight: 100,
                            maxHeight: 500),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppLocalization.of(context)
                                    .translate('offline_login_message') ??
                                'Warning!!! You are about to enable mobile offline login on this device. This option will allow this device to store encrypted data for your profile. If this device is stolen, hackers may be able to crack encryption and retrieved profile data. By completing this step you agree to accept this risk.',
                            style: TextStyle(
                                color: Colors.red.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
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
                                  //Fit and size widgets widgets according to container size
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return AppLocalization.of(context)
                                                .translate(
                                                    'offline_password_error_message') ??
                                            'Password';
                                      }
                                      return null;
                                    },
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      icon: Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        icon: !showPassword
                                            ? Icon(CustomIcons.eye_off)
                                            : Icon(CustomIcons.eye),
                                        onPressed: () {
                                          setState(() {
                                            showPassword = !showPassword;
                                          });
                                        },
                                      ),
                                      labelText: AppLocalization.of(context)
                                              .translate('password_label') ??
                                          'Password',
                                    ),
                                    obscureText: showPassword, // Hide password
                                  ),
                                ),
                                Expanded(
                                  //Fit and size widgets widgets according to container size
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return AppLocalization.of(context)
                                                .translate(
                                                    'offline_password_Confirm_error_message') ??
                                            'Password';
                                      }
                                      if (val != _passwordController.text) {
                                        return AppLocalization.of(context)
                                                .translate(
                                                    'offline_password_Not_Match_error_message') ??
                                            'Password';
                                      }
                                      return null;
                                    },
                                    controller: _passwordConfimController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      icon: Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        icon: !showPassword
                                            ? Icon(CustomIcons.eye_off)
                                            : Icon(CustomIcons.eye),
                                        onPressed: () {
                                          setState(() {
                                            showPassword = !showPassword;
                                          });
                                        },
                                      ),
                                      labelText: AppLocalization.of(context)
                                              .translate(
                                                  'confirm_password_label') ??
                                          'Confirm Password',
                                    ),
                                    obscureText: showPassword, // Hide password
                                  ),
                                ),
                                ButtonTheme(
                                  minWidth: double.infinity,
                                  child: RaisedButton(
                                    color: Colors.blue.shade500,
                                    child: Text(
                                      AppLocalization.of(context).translate(
                                              'offline_login_button') ??
                                          'Complete offline setup',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: state is! LinearProgressIndicator
                                        ? _onLoginButtonPressed
                                        : null,
                                  ),
                                ),
                                Container(
                                  child: state is LinearProgressIndicator
                                      ? LinearProgressIndicator()
                                      : null,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
