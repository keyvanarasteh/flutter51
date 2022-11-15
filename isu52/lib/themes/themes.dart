import 'package:flutter/material.dart';

class Themes {

  static var lightTheme = ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        fontFamily: 'OpenSans',
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.orange,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),

        ),
      );

  static var darkTheme = ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        fontFamily: 'OpenSans',
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.orange,
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),

        ),
      );
}