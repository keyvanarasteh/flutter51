// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.orange,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
            isScrollable: true,
            // indicator: BoxDecoration(
            //   color: Colors.orange,
            //   borderRadius: BorderRadius.circular(15),

            // ),
            tabs: [
              Icon(Icons.home),
              Icon(Icons.notifications),
              Icon(Icons.contact_mail),
              Icon(Icons.home),
              Icon(Icons.notifications),
              Icon(Icons.contact_mail),
              Icon(Icons.home),
              Icon(Icons.notifications),
              Icon(Icons.contact_mail),
              Icon(Icons.home),
              Icon(Icons.notifications),
              Icon(Icons.contact_mail),
              Icon(Icons.home),
              Icon(Icons.notifications),
              Icon(Icons.contact_mail),
            ],
          )
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(child: Text('Tab1')),
            ),
            Container(
               child: Center(child: Text('Tab2')),
            ),
            Container(
               child: Center(child: Text('Tab3')),
            ),
            Container(
              child: Center(child: Text('Tab1')),
            ),
            Container(
               child: Center(child: Text('Tab2')),
            ),
            Container(
               child: Center(child: Text('Tab3')),
            ),
            Container(
              child: Center(child: Text('Tab1')),
            ),
            Container(
               child: Center(child: Text('Tab2')),
            ),
            Container(
               child: Center(child: Text('Tab3')),
            ),
            Container(
              child: Center(child: Text('Tab1')),
            ),
            Container(
               child: Center(child: Text('Tab2')),
            ),
            Container(
               child: Center(child: Text('Tab3')),
            ),
            Container(
              child: Center(child: Text('Tab1')),
            ),
            Container(
               child: Center(child: Text('Tab2')),
            ),
            Container(
               child: Center(child: Text('Tab3')),
            ),
          ],
        ),
      ),
    );
  }
}