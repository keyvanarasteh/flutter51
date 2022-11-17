// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../class/plants_info.dart';
import '../companents/plants_card_design.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PlantsInfo> plantCards = [
    PlantsInfo(
        images: "glass.png",
        title: "Wall Mounted Plant Glass Pot",
        subtitle:
            "Plant in a glass bowl it can be mounted on a wall or celling (holders included).",
        price: "25.00"),
    PlantsInfo(
        images: "masa.png",
        title: "Turf Pot Plant",
        subtitle: "Big leaf plant in a turf pot for yuor home or office decor.",
        price: "15.00"),
    PlantsInfo(
        images: "plant.png",
        title: "Scandinavian Plant",
        subtitle: "Low maintenance flower is a white ceramic pot",
        price: "45.00"),
  ];

  set index(int index) {}

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          NavigationRail(
            unselectedIconTheme: IconThemeData(size: 35),
            selectedIconTheme: IconThemeData(size: 35),
            backgroundColor: Color.fromARGB(255, 118, 151, 74),
            selectedIndex: index,
            onDestinationSelected: (index) => this.index = index,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.grain),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.home, color: Colors.black),
                label: Text('Home'),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 118, 151, 74),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 118, 151, 74),
                          )),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 118, 151, 74),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 10,
                  ),
                  child: Text("Green"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("Plants",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    itemCount: plantCards.length,
                    itemBuilder: (context, index) {
                      return PlantsCardDesign(
                        item: plantCards[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
