import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/services/init_services.dart';

import 'package:j3enterprise/src/resources/shared/utils/routes.dart';
import 'package:j3enterprise/src/ui/splash/splash_page.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'src/resources/repositories/user_repository.dart';
import 'src/ui/authentication/authentication_bloc.dart';
import 'src/ui/authentication/authentication_event.dart';
import 'src/ui/authentication/authentication_state.dart';
import 'src/resources/shared/common/loading_indicator.dart';
import 'src/ui/home/home_page.dart';
import 'src/ui/login/login_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:overlay_support/overlay_support.dart';

import 'dart:io' show Platform;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // intiailize services
  await initServices();
  SharedPreferences.setMockInitialValues({});
  final userRepository = UserRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository userRepository;

  App({Key key, @required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            return HomePage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: userRepository);
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          return SplashPage();
        },
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('es', 'ES'),
        Locale('sk', 'SK'),
      ],
      localizationsDelegates: [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        if (Platform.isAndroid) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
        } else if (Platform.isIOS) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
        }

        return supportedLocales.first;
      },
    );
  }
}
