import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.star,
          color: Colors.black,
          size: 48,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
          size: 128,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
          size: 48,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
          size: 128,
        ),
      ],
    );
  }
}
