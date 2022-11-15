import 'package:fluter_workspace/dream_home_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'Denemem',
      theme: ThemeData(
            
        primarySwatch: Colors.blue,
      ),
      home:Dream_Home_Screen()
    );
  }
}
