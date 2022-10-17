import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Text('Hello World;'),
    );
  }
}

// this example is for a container without width and height properties

// bu ornekte boyutlari vermedik 