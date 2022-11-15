// ignore_for_file: prefer_const_constructors, unused_import

import 'package:RentShow/screens/car_info.dart';
import 'package:RentShow/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/rent_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/info":(context) => Car_info(),
        "/rent":(context) => RentScreen(),
        "/welcome":(context) => WelcomeScreen(),
      },
      initialRoute: "/welcome",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
