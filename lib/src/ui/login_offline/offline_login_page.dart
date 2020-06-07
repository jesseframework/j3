import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/widgets/custom_drawer.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/src/ui/login_offline/bloc/offline_bloc.dart';

import 'offline_login_form.dart';

class OfflineLoginPage extends StatelessWidget {
  final UserRepository userRepository;

  OfflineLoginPage({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate('app_title')),
        backgroundColor: const Color(0xff5362b7),
      ),
      backgroundColor: const Color(0xff5D76FB),
      body: SafeArea(
        child: BlocProvider(
          create: (context) {
            return OfflineBloc(
                //authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
                //userRepository: userRepository,
                );
          },
          child: Stack(
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: 500,
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: OfflineLoginForm()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      // drawer: CustomDrawer(),
    );
  }
}
