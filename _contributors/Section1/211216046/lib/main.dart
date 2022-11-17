import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Screen Design",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.light(),
    );
  }
}
