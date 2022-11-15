// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/products_item.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header Text
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Your Location",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),

          SizedBox(
            height: 2,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Text(
              "Malaysia",
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // Search Area

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search here",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade900,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade800,
                        ))),
              ),
            ),
          ),

          // Products

          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Text(
              "Popular Destinations",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Expanded(
          //     child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(18.0),
          //       child: Container(
          //         color: Color.fromARGB(255, 240, 228, 228),
          //         height: 10,
          //         width: 200,
          //         child: Image.asset('images/labadie.jpeg'),
          //       ),
          //     ),
          //   ],
          // ))

          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ProductItem(
                productImage: 'images/labadie.jpeg',
                productName: "Labadie",
                productPoint: "4.3",
              ),
              ProductItem(
                productImage: 'images/madrid.jpg',
                productName: "Madrid",
                productPoint: "4.3",
              ),
              ProductItem(
                productImage: 'images/redangIsland.jpeg',
                productName: "Redang Island",
                productPoint: "4.3",
              ),
              ProductItem(
                productImage: 'images/redangIsland.jpeg',
                productName: "Redang Island",
                productPoint: "4.3",
              ),
            ],
          )),

          // Recommandations

          // Row(
          //   children: [

          //     Column(
          //       children: [Image.asset('images/roma.jpg')],
          //     ),
          //     Text("Roma")
          //   ],
          // ),
          // burayı çalıştırınca sayfa bozuluyor

          // navigation bar
          BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ])
        ],
      ),
    );
  }
}
