// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;
    
 const MyList({
  Key? key,
  required this.iconImagePath,
  required this.tileTitle,
  required this.tileSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [    
            //icon
            Container(
              height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                  child: Image.asset(iconImagePath),
                ),
                  ],
              ),
        ),  
                
              SizedBox(
                width: 20,
              ),
                 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSubTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
                  Icon(Icons.arrow_forward_ios),
            ],
          );
  }
}