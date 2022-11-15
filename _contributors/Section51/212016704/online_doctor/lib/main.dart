import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:online_doctor/doctor_profile_page.dart';
// ignore: unused_import
import 'package:online_doctor/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor',
      theme: ThemeData(
        primaryColor: Colors.black,
        // appBarTheme: AppBarTheme(tit)
      ),
      home: const HomeScreen(),
      // home: const DoctorPage(),
    );
  }
}
