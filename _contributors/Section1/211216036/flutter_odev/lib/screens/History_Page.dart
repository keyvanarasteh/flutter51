// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_odev/screens/HomePage.dart';

import '../widgets/second_page_box.dart';

class History_Page extends StatefulWidget {
  final String Yol;
  final String yerBaslik;
  final String yerDetay;
  final String yerMesafe;
  final String yerZaman;
  final String yerRatio;
  final String yerLike;

  const History_Page({
    Key? key,
    required this.Yol,
    required this.yerBaslik,
    required this.yerDetay,
    required this.yerMesafe,
    required this.yerZaman,
    required this.yerRatio,
    required this.yerLike,
  }) : super(key: key);

  @override
  State<History_Page> createState() => _History_PageState();
}

class _History_PageState extends State<History_Page> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Expanded(
                flex: 7,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.Yol), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(25)),
                          // child: Blur(
                          //     blurColor: Colors.transparent,
                          //     colorOpacity: 0,
                          //     borderRadius: BorderRadius.circular(35),
                          //     blur: 0.1,
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: IconButton(
                          //         onPressed: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) => AnaEkran()));
                          //         },
                          //         icon: Icon(Icons.arrow_back_ios_sharp,
                          //             color: Colors.white, size: 20),
                          //       ),
                          //     )),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AnaEkran()));
                            },
                            icon: Icon(Icons.arrow_back_ios_sharp,
                                color: Colors.white, size: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(25)),
                            child: Blur(
                                blurColor: Colors.transparent,
                                colorOpacity: 0,
                                borderRadius: BorderRadius.circular(35),
                                blur: 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.favorite_border,
                                      color: Colors.white, size: 20),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12),
                children: [
                  second_page_box(
                      Yol: "images/distance.png", boxText: widget.yerMesafe),
                  second_page_box(
                      Yol: "images/time-left.png", boxText: widget.yerZaman),
                  second_page_box(
                      Yol: "images/star.png", boxText: widget.yerRatio),
                  second_page_box(
                      Yol: "images/heart.png", boxText: widget.yerLike),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.yerBaslik,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                        Column(
                          children: [
                            Container(
                              child: Text(widget.yerDetay),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: bottomBar());
  }

  BottomNavigationBar bottomBar() => BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (_currentIndex != index) {
              _currentIndex = index;
            }
          });
        },
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 47, 173, 204),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      );
}
