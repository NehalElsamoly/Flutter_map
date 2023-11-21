import 'package:flutter/material.dart';
import 'package:map/core/global/theme/appbartheme/appBarlight.dart';

ThemeData getThemeDataLight()=>ThemeData(
    scaffoldBackgroundColor:Colors.white,

    primaryColor: appbarlight.appBarColor,
    appBarTheme: AppBarTheme(
        color: Colors.blueGrey
    ),
    textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 40,
            color: Colors.white60,
        ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.blueGrey)
        ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.pinkAccent
    ),
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(
            Colors.blueGrey
        ),
        thumbColor: MaterialStateProperty.all(
            Colors.blueGrey
        )
    ),
    iconTheme: IconThemeData(
        color: Colors.blue,
        size: 30
    )
);