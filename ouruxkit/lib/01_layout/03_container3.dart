import 'package:flutter/material.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      width: 100,
      height: 100,
      child: const Text('Hello World;'),
    );
  }
}

// this example is for a container with numeric width and height properties

// bu ornekte boyutlari sayi olarak tanimladik