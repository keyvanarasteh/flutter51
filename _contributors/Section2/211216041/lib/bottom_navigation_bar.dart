import 'package:flutter/material.dart';
import 'package:uni_task/screens/calendar_screen.dart';
import 'package:uni_task/screens/home_screen.dart';
import 'package:uni_task/screens/settings_screen.dart';
import 'package:uni_task/screens/temp_screen.dart';
import 'constants.dart' as AppConstants;

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _index = 0;
  List screens = const [
    HomeScreen(),
    TempScreen(),
    CalendarScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: AppConstants.mainColor,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.query_stats), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
          onTap: (value) => setState(() {
            _index = value;
          }),
          currentIndex: _index,
          elevation: 0,
          unselectedItemColor: const Color.fromARGB(255, 115, 116, 125),
          selectedIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 128, 121, 194),
            shadows: [
              Shadow(color: Color.fromARGB(200, 106, 94, 204), blurRadius: 100),
              Shadow(color: Color.fromARGB(200, 106, 94, 204), blurRadius: 90),
              Shadow(color: Color.fromARGB(200, 106, 94, 204), blurRadius: 80),
              Shadow(color: Color.fromARGB(200, 106, 94, 204), blurRadius: 70),
              Shadow(color: Color.fromARGB(200, 106, 94, 204), blurRadius: 60),
            ],
          ),
        ),
      ),
    );
  }
}
