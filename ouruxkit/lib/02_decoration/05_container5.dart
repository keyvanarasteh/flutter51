import 'package:flutter/material.dart';

class Container5 extends StatelessWidget {
  const Container5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      width: double.infinity,
      height: double.infinity,
      child: const Text('Hello World;'),
    );
  }
}


// this example is for a container with Background Color

// bu ornekte arka plan icin renk kullaniyoruz