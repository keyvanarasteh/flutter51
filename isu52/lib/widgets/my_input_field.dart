
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {

  final String hintText;
  final Icon icon;
  
  const MyInputField({
    Key? key, required this.hintText, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 3 ,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: icon,
          // filled: true,
          // fillColor: Colors.grey.shade700,
        ),
      ),
    );
  }
}