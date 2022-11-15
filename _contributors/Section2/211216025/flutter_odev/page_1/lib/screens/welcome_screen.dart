// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/crop.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text(
                "Rent & Drive",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFFD1D4D1),
                    fontWeight: FontWeight.bold,
                    background: Paint()
                      ..strokeWidth = 49
                      ..color = Colors.white24
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/rent");
                },
                child: Container(
                    width: 265,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Get Start",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD1D4D1),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 84.0),
                          child: Icon(
                              color: Color(0xFFD1D4D1),
                              size: 50,
                              UniconsLine.arrow_right),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
