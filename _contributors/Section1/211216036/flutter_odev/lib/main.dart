// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, duplicate_ignore

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_odev/screens/HomePage.dart';
import 'package:flutter_odev/screens/Second_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // brightness: Brightness.dark,
          primarySwatch: Colors.blue),
      home: AnaEkran(),
    );
  }
}
