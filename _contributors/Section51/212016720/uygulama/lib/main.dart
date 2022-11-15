import 'package:flutter/material.dart';
import 'package:uygulama/pages/home_view.dart';
import 'package:uygulama/pages/producks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: home_view(),
    );
  }
}
