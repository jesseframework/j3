import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
=======
<<<<<<< HEAD
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
=======
import 'package:j3enterprise/src/resources/shared/function/schedule_background_jobs.dart';
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
>>>>>>> d905bf68ae66d893fb1f9bea2fec24a0c63aaa81
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/resources/shared/utils/langcustomdialogbox.dart';
import 'package:j3enterprise/src/ui/about/about.dart';
import 'package:j3enterprise/src/ui/app_logger/applogger_page.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/background_jobs/background_fetch_page.dart';
import 'package:j3enterprise/src/ui/background_jobs/backgroundjobs_pages.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 32,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Text(
                      AppLocalization.of(context)
                              .translate('setting_label_appdraw') ??
                          'Setting',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CommunicationPage()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.wrench_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context)
                          .translate('set_communication_appdraw') ??
                      'Set Communication',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BackgroundJobsPage()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.sync,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context)
                          .translate('background_job_appdraw') ??
                      'Background Jobs',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d905bf68ae66d893fb1f9bea2fec24a0c63aaa81
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BackgroundFetchPage()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.sync,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context)
                          .translate('background_fetch_appdraw') ??
                      'Background Fetch',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
<<<<<<< HEAD
=======
=======
>>>>>>> 3155339cff24631565403ae694c6e3af0e8966bb
>>>>>>> d905bf68ae66d893fb1f9bea2fec24a0c63aaa81
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppLoggerPage()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.error_outline,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context).translate('applogger_appdraw') ??
                      'App Logger',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                showDialog(
                    context: context,
                    builder: (context) {
                      return LangCustomDialog();
                    });
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.language,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context).translate('language_appdraw') ??
                      'Language',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.info_circle_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context).translate('about_appdraw') ??
                      'About',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
              },
              child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.blue),
                title: Text(
                  AppLocalization.of(context).translate('logout_appdraw') ??
                      'Logout',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Divider(
                  thickness: 2,
                ),
                Text(
                  AppLocalization.of(context).translate('version_appdraw') ??
                      'Version',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Jesseframework 2.1',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'J3 Enterprise Pro 3.1',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
