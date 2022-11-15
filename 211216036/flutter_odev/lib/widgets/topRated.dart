// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter_odev/screens/Second_Page.dart';

import '../screens/Second_Page.dart';

class Kutular extends StatelessWidget {
  final String Yol;
  final String ratedText;
  final String ratedText2;
  const Kutular({
    Key? key,
    required this.Yol,
    required this.ratedText,
    required this.ratedText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, left: 10, bottom: 50),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(Yol), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(4, 4)),
                // BoxShadow(
                //   color:Colors.white,
                //   offset: Offset(-4,-4),
                //   blurRadius: 15,
                //   spreadRadius: 1,
                // )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ratedText,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      ratedText2,
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                    // Text(
                                    //   "4,7",
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontSize: 10,
                                    //   ),
                                    // )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).frosted(
                      blur: 2.5,
                      frostColor: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
