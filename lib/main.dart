/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'package:background_fetch/background_fetch.dart';
import 'package:j3enterprise/src/resources/services/background_fetch_service.dart';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:j3enterprise/src/resources/services/firebase_message_wrapper.dart';
import 'package:j3enterprise/src/resources/services/init_services.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/routes.dart';
import 'package:j3enterprise/src/resources/shared/utils/theme.dart';
import 'package:j3enterprise/src/ui/splash/splash_page.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/resources/repositories/user_repository.dart';
import 'src/resources/shared/common/loading_indicator.dart';
import 'src/ui/authentication/authentication_bloc.dart';
import 'src/ui/authentication/authentication_event.dart';
import 'src/ui/authentication/authentication_state.dart';
import 'src/ui/home/home_page.dart';
import 'src/ui/login/login_page.dart';

GetIt getIt = GetIt.I;

void setupLocator() {
  getIt.registerLazySingleton(() => UserRepository());
}

Future<void> main() async {
  setupLocator();
//Important Information
//Don't change the order of InitServiceSetup
//Order of class
//1- InitalServerSetup
//2- setMokInitalValue
//3- setupLoggin

  WidgetsFlutterBinding.ensureInitialized();

  //InitServiceSetup initServiceSetup = new InitServiceSetup();

  if (Platform.isWindows || Platform.isMacOS) {
    SharedPreferences.setMockInitialValues({});
  }
  await systemInitelSetup();
  //await initServiceSetup.setupLogging();

  final userRepository = UserRepository();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc()..add(AppStarted());
      },
      child: App(
        userRepository: userRepository,
      ),
    ),
  );
  if (Platform.isAndroid || Platform.isIOS) {
    BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
  }
}

class App extends StatefulWidget {
  final UserRepository userRepository;

  App({
    Key key,
    this.userRepository,
  }) : super(key: key);
  static void setLocale(BuildContext context, Locale locale) {
    _AppState state = context.findAncestorStateOfType<_AppState>();
    state.setLocale(locale);
  }

  static void setTheme(BuildContext context) {
    _AppState state = context.findAncestorStateOfType<_AppState>();
    state.didChangeDependencies();
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale;
  ThemeData themeData;

  void setLocale(locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getIt<UserRepository>().getLocale().then((value) {
      setState(() {
        _locale = value;
      });
    });
    getIt<UserRepository>().getTheme().then((value1) {
      setState(() {
        themeData = value1 == 'dark' ? darkTheme : lightTheme;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FirebaseMessageWrapper(
      child: OverlaySupport(
        child: MaterialApp(
          // navigatorObservers: [BotToastNavigatorObserver()],
          home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if (state is PushNotificationState) {
                
              }
              if (state is AuthenticationAuthenticated) {
                return HomePage();
              }
              if (state is AuthenticationUnauthenticated) {
                return LoginPage();
              }
              if (state is AuthenticationLoading) {
                return LoadingIndicator();
              }
              return SplashPage();
            },
          ),
          theme: themeData,
          locale: _locale,
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
        ),
      ),
    );
  }

  
  
}
