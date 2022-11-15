// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final bool isSelected;


  const CategoryItem(
    {
    Key? key, required this.title, this.isSelected = false,
    }
  ) : super(key: key);


  //    
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected ? Colors.orange : Colors.black54,
            width: 2,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.orange : Colors.grey.shade600,
          fontSize: 18,
        )
      ),
    );
  }
}