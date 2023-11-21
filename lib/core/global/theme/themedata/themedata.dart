// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

ThemeData getThemeDataDark()=>ThemeData(
  primaryColor: Colors.purpleAccent,
    scaffoldBackgroundColor:Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.black
  ),
 buttonTheme:ButtonThemeData(
   buttonColor: Colors.brown
 ),
elevatedButtonTheme: ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Text color
),
),//
// colorScheme: ColorScheme(background: Colors.grey, brightness: Colors.grey)
colorScheme:  ColorScheme.light(
 // primary: Colors.blue,
 // primaryVariant: Colors.indigo,
  secondary: Colors.green,
//  secondaryVariant: Colors.teal,
  surface: Colors.grey,
  background: Colors.purpleAccent,
),
  backgroundColor: Colors.purpleAccent
);