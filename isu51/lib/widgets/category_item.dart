
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final bool isSelected;


  const CategoryItem({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.grey.shade700,
            ),
          ),
          isSelected ? 
            Icon(
              Icons.circle,
              size: 12,
              color: Colors.orange,
            ) :
            SizedBox(),
        ],
      ),
    );
  }
}