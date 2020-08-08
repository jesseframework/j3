import 'package:flutter/material.dart';
final darkTheme = ThemeData.dark( ).copyWith() ;

final lightTheme = ThemeData(
    primaryColor: Colors.blue,
    cardColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Color(0xffe7ebee),
    scaffoldBackgroundColor:Color(0xffe7ebee) ,
    accentColor: Colors.black87,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
    ),
    fontFamily: 'MyFont',
    textSelectionHandleColor: Colors.black45 ,

   );
