// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.pink,
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/bg3.jpg"),
        ),
      ),
      child: Text(
        'Hello',
        style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Container(child:...)
// Center(child:...)
// Text('Yazi')
// Image.network('address')
// Image.assets('address')
// Icon(Icons.queue_rounded)

// Row(children:[])
// Column(children:[])