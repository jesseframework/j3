import 'package:flutter/material.dart';
import 'package:j3enterprise/screens/login/login_screen.dart';
import 'package:j3enterprise/shared/utils/routes.dart';
import 'package:j3enterprise/shared/widgets/custom_drawer.dart';
import 'package:logging/logging.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time} : ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('J3 Enterprise Solutions'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: LoginScreen(),
        ),
        resizeToAvoidBottomInset: false,
        drawer: CustomDrawer(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
    );
  }
}
