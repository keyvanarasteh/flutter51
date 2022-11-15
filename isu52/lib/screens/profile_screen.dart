// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          )
        ),

      ),
      body: Column(
        children: [
          // Profile Pic
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade200,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
              radius: 48,
            ),
          ),
          // Tabs
          DefaultTabController(
            length: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 252, 250, 251),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey.shade200,
                          spreadRadius: 0,
                          offset: Offset(0,0),
                        )
                      ]
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      labelColor: Colors.black54,
                      // unselectedLabelColor: Colors.grey.shade400,
                      splashBorderRadius: BorderRadius.circular(25),
                      tabs: [
                        Tab(text: "Trips"),
                        Tab(text: "Events"),
                        Tab(text: "Data"),
                      ],
                    ),
                  ),
                ),
                
                Container( 
                  //Add this to give height
                  height: MediaQuery.of(context).size.height - 272,
                  child: TabBarView(children: [
                    Container(
                      color: Colors.yellow,
                      child: Text("Home Body"),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Text("Articles Body"),
                    ),
                    Container(
                      color: Colors.orange,
                      child: Text("User Body"),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}