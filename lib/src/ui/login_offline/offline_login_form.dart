import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';

import 'bloc/offline_bloc.dart';

import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

class OfflineLoginForm extends StatefulWidget {
  @override
  State<OfflineLoginForm> createState() => _OfflineLoginFormState();
}

class _OfflineLoginFormState extends State<OfflineLoginForm> {
  final formKey = new GlobalKey<FormState>();
  bool pass = true;
  String selected;
  bool isSwitched = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<OfflineBloc>(context).add(
        OfflineLoginButtonPressed(
            username: _usernameController.text,
            password: _passwordController.text,
            tenant: 1),
      );
    }

    return BlocListener<OfflineBloc, OfflineBlocState>(
      listener: (context, state) {
        if (state is OfflineLoginFailure) {
          Scaffold.of(context)
              .showSnackBar(new SnackBar(content: new Text(state.error)));
        }
      },
      child: BlocBuilder<OfflineBloc, OfflineBlocState>(
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
                            //Fit and size widgets widgets according to container size
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                filled: true,
                                icon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: !pass
                                      ? Icon(CustomIcons.eye_off)
                                      : Icon(CustomIcons.eye),
                                  onPressed: () {},
                                ),
                                labelText: AppLocalization.of(context)
                                        .translate('password_label') ??
                                    'Password',
                              ),
                              obscureText: pass, // Hide password
                            ),
                          ),
                          Expanded(
                            //Fit and size widgets widgets according to container size
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                filled: true,
                                icon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: !pass
                                      ? Icon(CustomIcons.eye_off)
                                      : Icon(CustomIcons.eye),
                                  onPressed: () {},
                                ),
                                labelText: AppLocalization.of(context)
                                        .translate('password_label') ??
                                    'Confirm Password',
                              ),
                              obscureText: pass, // Hide password
                            ),
                          ),
                          // Expanded(
                          //   child: DropdownButtonFormField<String>(
                          //     // hint: Text(AppLocalization.of(context).translate('tenant_default_text')),
                          //     decoration: InputDecoration(
                          //       filled: true,
                          //       icon: Icon(Icons.home),
                          //       alignLabelWithHint: false,
                          //       labelText: AppLocalization.of(context)
                          //               .translate('tenant_label') ??
                          //           'Tenant',
                          //     ),
                          //     value: selected,
                          //     items: ["Host", "Admin", "Guest"]
                          //         .map((label) => DropdownMenuItem<String>(
                          //               child: Text(label),
                          //               value: label,
                          //             ))
                          //         .toList(),
                          //     onChanged: (value) {
                          //       setState(() {
                          //         selected = value;
                          //       });
                          //     },
                          //   ),
                          // ),
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: Colors.blue.shade500,
                              child: Text(
                                AppLocalization.of(context)
                                        .translate('login_button') ??
                                    'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: state is! OfflineLoginLoading
                                  ? _onLoginButtonPressed
                                  : null,
                            ),
                          ),
                          Container(
                            child: state is OfflineLoginLoading
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
          );
        },
      ),
    );
  }
}