import 'package:flutter/material.dart';

final darkTheme = ThemeData(
   
  //cardColor: Color(0xFF212121),
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
  fontFamily: 'MyFont',
);

final lightTheme = ThemeData(
    cardColor: Colors.white,
    fontFamily: 'MyFont',
    primarySwatch: Colors.grey,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    backgroundColor: Colors.grey.shade300,
    accentColor: Colors.black87,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    appBarTheme: AppBarTheme(color: Colors.blue));
