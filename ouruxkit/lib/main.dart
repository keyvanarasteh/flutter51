import 'package:flutter/material.dart';
import 'package:ouruxkit/01_layout/01_container.dart';
import 'package:ouruxkit/01_layout/02_container2.dart';
import 'package:ouruxkit/01_layout/03_container3.dart';
import 'package:ouruxkit/01_layout/04_container4.dart';
import 'package:ouruxkit/02_decoration/05_container5.dart';
import 'package:ouruxkit/02_decoration/06_container6.dart';
import 'package:ouruxkit/02_decoration/07_container7.dart';
import 'package:ouruxkit/02_decoration/08_container8.dart';
import 'package:ouruxkit/02_decoration/09_container9.dart';
import 'package:ouruxkit/instagram.dart';
import 'package:ouruxkit/work.dart';

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
      home: Work(),
    );
  }
}
