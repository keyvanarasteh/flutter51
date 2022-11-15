import 'package:flutter/material.dart';
import 'package:isu52/screens/food_screen.dart';
import 'package:isu52/screens/home_screen.dart';
import 'package:isu52/screens/product_screen.dart';
import 'package:isu52/screens/profile_screen.dart';
import 'package:isu52/screens/tab_screen.dart';
import 'package:isu52/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ISU Section.52',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      routes: {
        '/foods':(context) => FoodScreen(),
        '/tab':(context) => TabScreen(),
        '/profile':(context) => ProfileScreen(),
        '/':(context) => HomeScreen(),
      },
      initialRoute: '/',
      // home: HomeScreen(),
    );
  }
}
