// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetICreated extends StatelessWidget {

  final String  profileTitle;
  final bool isSelected;

  const WidgetICreated({
    Key? key,
    required this.profileTitle, 
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          isSelected ?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.circle,
              size: 15,
              color: Colors.orange,
            ),
          ) : SizedBox(),
          Text(
            profileTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ?  Colors.orange : Colors.grey,
              
            ),
          ),
        ],
      ),
    );
  }
}
