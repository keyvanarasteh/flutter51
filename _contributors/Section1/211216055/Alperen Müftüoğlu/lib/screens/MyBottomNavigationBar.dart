import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'discover_page.dart';
import 'home_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    DiscoverPage(),
    DiscoverPage(),
    DiscoverPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        mouseCursor: MouseCursor.uncontrolled,
        selectedIconTheme: IconThemeData(
          shadows: [
            Shadow(
            blurRadius: 40,
            color: AppConstants.secondAngleOnColor,
            )
          ],
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_outlined),
            label: 'My Picks',
          ),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("assets/alperen.jpeg"),
                radius: 12,
              ),
              label: 'Me')
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromRGBO(200, 200, 200, 60),
        selectedItemColor: AppConstants.secondAngleOnColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
