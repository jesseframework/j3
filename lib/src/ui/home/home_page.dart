import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/services/firebase_message_wrapper.dart';
import 'package:j3enterprise/src/resources/services/firebase_notification_service.dart';

import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';
import 'package:j3enterprise/src/ui/preferences/preferences.dart';
import 'package:j3enterprise/src/resources/shared/widgets/custom_drawer.dart';
import 'dart:io' show Platform;

// Future<dynamic> backgroundMessageHandler(Map<String, dynamic> message) {
//   print(message);
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    if (!Platform.isWindows && !Platform.isMacOS) {
      FirebaseNotificationService.instance.getIOSPermission();

      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalization.of(context).translate('app_title')),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 18),
                child: StreamBuilder<ConnectivityResult>(
                    stream: Connectivity().onConnectivityChanged,
                    builder: (context, data) {
                      if (data.data == ConnectivityResult.none) {
                        return Icon(
                          Icons.signal_wifi_off,
                          color: Colors.red,
                        );
                      } else {
                        return Icon(Icons.wifi);
                      }
                    }))
          ],
        ),
        drawer: CustomDrawer(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff3f50b7), Color(0xff5362b7)],
                  stops: [.4, .8])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white, boxShadow: kElevationToShadow[4]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Preferences()));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: kElevationToShadow[4]),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.settings,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppLocalization.of(context)
                                  .translate('home_prefrence_icon_label') ??
                              'Prefrence',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } catch (e) {}
  }
}
