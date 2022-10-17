import 'package:flutter/material.dart';

class Container6 extends StatelessWidget {
  const Container6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/tr/thumb/e/ed/Bart_Simpson.svg/640px-Bart_Simpson.svg.png'),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: const Text('Hello World;'),
    );
  }
}


// this example is for a container with Background Image

// bu ornekte arka plan icin gorsel kullaniyoruz