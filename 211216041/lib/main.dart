import 'package:flutter/material.dart';
import 'package:uni_task/bottom_navigation_bar.dart';
import 'package:uni_task/screens/home_screen.dart';
import 'constants.dart' as AppConstants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: AppBottomNavigationBar(),
    );
  }
}
