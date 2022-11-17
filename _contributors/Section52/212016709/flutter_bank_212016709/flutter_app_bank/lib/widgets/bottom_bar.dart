import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bank/screens/home_screen.dart';
import 'package:flutter_app_bank/utils/colors.dart';
import 'package:flutter/src/widgets/basic.dart';

class BottomBar extends StatefulWidget {
  int selectedItem;
  final Function onUpdate;

  BottomBar({super.key, required this.selectedItem, required this.onUpdate});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final pages = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'Haccount',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'Mail',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'Menu',
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: primaryColor,
      currentIndex: widget.selectedItem,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      onTap: (index) { 
        widget.onUpdate(index);
        setState(() {
          widget.selectedItem = index;
        });
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 30,
          ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_wallet_outlined,
            size: 30,
          ),
          label: 'Haccount',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.mail,
            size: 30,
          ),
          label: 'Mail',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
          label: 'Menu',
        ),
      ],
    );
  }
}
