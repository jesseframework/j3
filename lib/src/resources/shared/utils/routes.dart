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
  OfflineLoginPage.route: (BuildContext context) => OfflineLoginPage(),
  LoginPage.route: (BuildContext context) => LoginPage(),
  BackgroundJobsPage.route: (BuildContext context) => BackgroundJobsPage(),
  CommunicationPage.route: (BuildContext context) => CommunicationPage(),
  PreferencesPage.route: (BuildContext context) => PreferencesPage(),
  SplashPage.route: (BuildContext context) => SplashPage(),
  HomePage.route: (BuildContext context) => HomePage(),
  About.route: (BuildContext context) => About(),
};
