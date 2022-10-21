// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BenimKutum extends StatelessWidget {
  const BenimKutum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hello",
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQH-cPZPxRISPQ/profile-displayphoto-shrink_800_800/0/1572341222149?e=2147483647&v=beta&t=jd6H1q49-uihumjnnQERMBZfyZVj17pLHVnMZMPYhCg'),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
