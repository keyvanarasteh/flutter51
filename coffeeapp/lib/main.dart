import 'package:coffeeapp/screens/coffee_home.dart';
import 'package:coffeeapp/screens/home_screen.dart';
import 'package:coffeeapp/screens/tabbar_screen.dart';
import 'package:flutter/material.dart';

import 'themes/themes.dart';

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
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: CoffeeHomeScreen(),
    );
  }
}
