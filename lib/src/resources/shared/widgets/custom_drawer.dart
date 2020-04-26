import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/about/about.dart';
import 'package:j3enterprise/src/ui/background_jobs/btasks.dart';
import 'package:j3enterprise/src/ui/communication/setup_communication.dart';
import 'package:j3enterprise/src/ui/communication/server_setup.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/utils/langcustomdialogbox.dart';

import 'dart:io' show Platform;

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
                      AppLocalization.of(context).translate('setting_label_appdraw'),
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
                  AppLocalization.of(context).translate('set_communication_appdraw'),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackgroundTasks()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.sync,
                  color: Colors.blue,
                ),
                title: Text(
                  AppLocalization.of(context).translate('background_job_appdraw'),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocalServer()));
              },              
              child: ListTile(
                leading: Icon(
                  CustomIcons.database_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  
                  AppLocalization.of(context).translate('local_server_setup_appdraw'),
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
                 AppLocalization.of(context).translate('language_appdraw'),
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
                 AppLocalization.of(context).translate('about_appdraw'),
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
                  AppLocalization.of(context).translate('version_appdraw'),
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
