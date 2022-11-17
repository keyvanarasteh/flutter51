import 'package:flutter/material.dart';

class bottom_nav extends StatelessWidget {
  const bottom_nav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Color.fromARGB(255, 240, 127, 164)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 240, 127, 164),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_grocery_store,
            color: Color.fromARGB(255, 240, 127, 164),
          ),
          label: 'Shopping',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Color.fromARGB(255, 240, 127, 164),
          ),
          label: 'Likes',
        ),
      ],
    );
  }
}
