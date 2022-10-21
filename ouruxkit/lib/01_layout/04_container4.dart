import 'package:flutter/material.dart';

class Container4 extends StatelessWidget {
  const Container4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      width: double.infinity,
      height: double.infinity,
      child: const Text('Hello World;'),
    );
  }
}


// this example is for a container with double.infinity width and height properties

// bu ornekte boyutlari double.infinity olarak tanimladik