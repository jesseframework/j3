import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    primaryColor: Colors.black,
    cardColor: Colors.black45,
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
    backgroundColor: Colors.white38,
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black87,
    fontFamily: 'MyFont',
    textSelectionColor: Colors.white54);

final lightTheme = ThemeData(
    primaryColor: Colors.blue,
    cardColor: Colors.white,
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    backgroundColor: Color(0xffe7ebee),
    accentColor: Colors.black87,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
    ),
    fontFamily: 'MyFont',
    textSelectionColor: Colors.black45);
