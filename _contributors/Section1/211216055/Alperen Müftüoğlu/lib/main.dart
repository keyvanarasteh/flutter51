import 'package:angle_on/constants/app_constants.dart';
import 'package:angle_on/screens/MyBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Than we setup preferred orientations,
  // and only after it finished we run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Angle on',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: AppConstants.primaryAngleOnColor),
        primaryColor: AppConstants.primaryAngleOnColor,
        scaffoldBackgroundColor: AppConstants.primaryAngleOnColor,
        backgroundColor: AppConstants.primaryAngleOnColor,
        appBarTheme: AppBarTheme(color: AppConstants.primaryAngleOnColor)
      ),
      home: const MyBottomNavigationBar(),
    );
  }
}
