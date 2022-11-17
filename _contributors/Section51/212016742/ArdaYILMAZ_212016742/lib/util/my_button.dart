// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
               BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 10,
                  ),
                ],
              ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        // text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}