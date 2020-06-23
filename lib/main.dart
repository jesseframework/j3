import 'package:background_fetch/background_fetch.dart';
import 'package:j3enterprise/src/resources/services/background_fetch_service.dart';
import 'package:j3enterprise/src/resources/services/firebase_message_wrapper.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/login_offline/offline_login_page.dart';
import 'package:j3enterprise/src/resources/services/init_services.dart';
import 'package:j3enterprise/src/resources/shared/utils/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:j3enterprise/src/ui/splash/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/resources/shared/common/loading_indicator.dart';
import 'src/ui/authentication/authentication_event.dart';
import 'src/ui/authentication/authentication_state.dart';
import 'src/resources/repositories/user_repository.dart';
import 'src/ui/authentication/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'src/ui/login/login_page.dart';
import 'package:get_it/get_it.dart';
import 'src/ui/home/home_page.dart';
import 'dart:io' show Platform;

GetIt getIt = GetIt.I;

void setupLocator() {
  getIt.registerLazySingleton(() => UserRepository());
}

Future<void> main() async {
  setupLocator();
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
  if (Platform.isAndroid || Platform.isIOS) {
    BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
  }
}

class App extends StatefulWidget {
  final UserRepository userRepository;

  App({Key key, this.userRepository}) : super(key: key);
  static void setLocale(BuildContext context, Locale locale) {
    _AppState state = context.findAncestorStateOfType<_AppState>();
    state.setLocale(locale);
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale;
  void setLocale(locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getIt<UserRepository>().getLocale().then((value) {
      print(value);
      setState(() {
        this._locale = value;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(), //1. call BotToastInit
      //navigatorObservers: [BotToastNavigatorObserver()],
      home: FirebaseMessageWrapper(
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is AuthenticationCreateMobileHash) {
              return OfflineLoginPage(userRepository: widget.userRepository);
            }
            if (state is AuthenticationAuthenticated) {
              return HomePage();
            }
            if (state is AuthenticationUnauthenticated) {
              return LoginPage(userRepository: widget.userRepository);
            }
            if (state is AuthenticationLoading) {
              return LoadingIndicator();
            }
            return SplashPage();
          },
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      locale: _locale,
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

  getit() {}
}
