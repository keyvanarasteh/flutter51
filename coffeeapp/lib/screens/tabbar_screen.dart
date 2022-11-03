// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
             indicatorColor: Colors.orange,
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorWeight:2,
              //  isScrollable: true,
             labelColor: Colors.black54,
             indicator: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(15),
             ),
            tabs: [
              Icon(Icons.flight),
              Icon(Icons.notifications),
              Icon(Icons.settings),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.notifications, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ),
    
      ),
    );
  }
}