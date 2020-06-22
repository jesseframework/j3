import 'package:flutter/material.dart';
import 'package:j3enterprise/src/ui/about/about.dart';
import 'package:j3enterprise/src/ui/background_jobs/backgroundjobs_pages.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_page.dart';
import 'package:j3enterprise/src/ui/home/home_page.dart';
import 'package:j3enterprise/src/ui/login/login_page.dart';
import 'package:j3enterprise/src/ui/login_offline/offline_login_page.dart';
import 'package:j3enterprise/src/ui/preferences/preferences.dart';
import 'package:j3enterprise/src/ui/splash/splash_page.dart';

final routes = {

   OfflineLoginPage.route: (BuildContext context) => OfflineLoginPage(userRepository: null,),
   LoginPage.route: (BuildContext context) => LoginPage(userRepository: null,),
   BackgroundJobsPage.route: (BuildContext context) =>  BackgroundJobsPage(),
   CommunicationPage.route: (BuildContext context) => CommunicationPage(),
   Preferences.route: (BuildContext context) => Preferences(),
   SplashPage.route: (BuildContext context) => SplashPage(),
   HomePage.route: (BuildContext context) =>  HomePage(),
   About.route: (BuildContext context) => About(),   
};
