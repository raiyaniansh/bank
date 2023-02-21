import 'package:flutter/material.dart';

ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      backgroundColor: Colors.grey.shade800,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      headline3: TextStyle(color: Colors.black, fontSize: 15),
    ));

ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      backgroundColor: Colors.grey.shade800,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      headline3: TextStyle(color: Colors.white, fontSize: 15),
    ));
