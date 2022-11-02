// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2,
            indicator: BoxDecoration(
              color:  Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            isScrollable: true,
            tabs: [
              Icon(Icons.favorite,),
              Icon(Icons.notifications,),
              Icon(Icons.settings,),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Icon(Icons.favorite, size: 200),
                Text('Hello Styling..',
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, child: Icon(Icons.arrow_back),
                )
              ],
            ),
            Icon(Icons.notifications, size: 300),
            Icon(Icons.settings, size: 300),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          backgroundColor: Colors.orange,
          child: Icon(Icons.add),
    
        ),
      ),
    );
  }
}