// ignore_for_file: unnecessary_import, prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class car_company extends StatelessWidget {
  final String companyimage;

  const car_company({
    Key? key,
    required this.companyimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.shade300,
              spreadRadius: 1,
              
            )
          ],  
        ),
        child: Center(      
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              companyimage,
              width: 48,
              height: 48,
            ),
          ),
        ),
      ),
    );
  }
}
