import 'package:flutter/material.dart';
import 'package:j3enterprise/screens/about/about.dart';
import 'package:j3enterprise/screens/background_jobs/btasks.dart';
import 'package:j3enterprise/screens/communication/setup_communication.dart';
import 'package:j3enterprise/screens/communication/server_setup.dart';
import 'package:j3enterprise/screens/preferences/preferences.dart';
import 'package:j3enterprise/shared/icons/custom_icons.dart';
import 'package:j3enterprise/shared/utils/langcustomdialogbox.dart';
import 'package:j3enterprise/shared/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('J3 Enterprise Solutions'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(
              Icons.wifi,
              color: Colors.greenAccent,
            ),
          ),
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                        'Preferences',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customDrawer() {
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
                      'Settings',
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
                        builder: (context) => SetupCommunication()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.wrench_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  'Setup Communication',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocalServer()));
              },
              child: ListTile(
                leading: Icon(
                  CustomIcons.database_solid,
                  color: Colors.blue,
                ),
                title: Text(
                  'Local Server Setup',
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
                  'About',
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
                  'J3 Enterprise Solution',
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
