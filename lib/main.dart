import 'dart:io' show Platform;

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:j3enterprise/src/resources/services/background_fetch_service.dart';
import 'package:j3enterprise/src/resources/services/init_services.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/routes.dart';
import 'package:j3enterprise/src/ui/login_offline/offline_login_page.dart';
import 'package:j3enterprise/src/ui/splash/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/resources/repositories/user_repository.dart';
import 'src/resources/shared/common/loading_indicator.dart';
import 'src/ui/authentication/authentication_bloc.dart';
import 'src/ui/authentication/authentication_event.dart';
import 'src/ui/authentication/authentication_state.dart';
import 'src/ui/home/home_page.dart';
import 'src/ui/login/login_page.dart';

Future<void> main() async {
//Important Information
//Don't change the order of InitServiceSetup
//Order of class
//1- InitalServerSetup
//2- setMokInitalValue
//3- setupLoggin

  WidgetsFlutterBinding.ensureInitialized();

  //InitServiceSetup initServiceSetup = new InitServiceSetup();
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    SharedPreferences.setMockInitialValues({});
  }

  await systemInitelSetup();
  //await initServiceSetup.setupLogging();

  final userRepository = UserRepository();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: App(
        userRepository: userRepository,
      ),
    ),
  );
  BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}

class App extends StatelessWidget {
  final UserRepository userRepository;

  App({Key key, this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationCreateMobileHash) {
            return OfflineLoginPage(userRepository: userRepository);
          }
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
