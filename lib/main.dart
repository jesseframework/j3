import 'package:flutter/material.dart';
import 'package:j3enterprise/screens/login/login_screen.dart';
import 'package:j3enterprise/shared/utils/routes.dart';
import 'package:j3enterprise/shared/widgets/customdrawer.dart';



void main() => runApp(MyApp());


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

