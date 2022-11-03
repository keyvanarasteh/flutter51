// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Themes {

  static var lightTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.orange,
    fontFamily: 'OpenSans',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 28,
        color: Colors.orange,
      ),
      headline2: TextStyle(
        fontSize: 26,
        color: Colors.orange,
      ),
      headline3: TextStyle(
        fontSize: 24,
        color: Colors.orange,
      ),
      headline4: TextStyle(
        fontSize: 20,
        color: Colors.orange,
      ),
    )
  );

  static var darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.orange,
    fontFamily: 'OpenSans',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 28,
        color: Colors.orange,
      ),
      headline2: TextStyle(
        fontSize: 26,
        color: Colors.orange,
      ),
      headline3: TextStyle(
        fontSize: 24,
        color: Colors.orange,
      ),
      headline4: TextStyle(
        fontSize: 20,
        color: Colors.orange,
      ),
    )
  );

}