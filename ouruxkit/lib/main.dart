import 'package:flutter/material.dart';
import 'package:ouruxkit/AnaEkran.dart';
import 'package:ouruxkit/SplashScreen2.dart';
import 'package:ouruxkit/backup/home_screen.dart';
import 'package:ouruxkit/backup/instagram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: AnaEkran(),
        ));
  }
}
