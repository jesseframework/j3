import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/custom_drawer.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';

import 'bloc/login_bloc.dart';
import 'login_form.dart';

class LoginPage extends StatefulWidget {
  final UserRepository userRepository;
  final String tenantName;

  LoginPage({Key key, @required this.userRepository, this.tenantName})
      : assert(userRepository != null),
        super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate('app_title')),
        backgroundColor: const Color(0xff5362b7),
      ),
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: widget.userRepository,
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  'images/beach-background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 30, top: 30),
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(
                          'images/logo.png',
                        ),
                      ),
                      LoginForm(widget.tenantName),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      //resizeToAvoidBottomInset: false,
      drawer: CustomDrawer(),
    );
  }
}
