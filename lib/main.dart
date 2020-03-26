import 'package:flutter/material.dart';
import 'home_page.dart';

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
          child: MyHomePage(),
        ),
        resizeToAvoidBottomInset: false,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'J3 ENTERPRISE',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'J3 ENTERPRISE SOLUTION'),
//     );
//   }
// }
