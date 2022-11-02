// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Themes  {

  static var lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.orange,
      fontFamily: 'OpenSans',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 48,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 22,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
  );

  static var darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.orange,
      fontFamily: 'OpenSans',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 48,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 42,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
  );
  
}