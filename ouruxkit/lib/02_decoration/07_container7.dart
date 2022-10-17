import 'package:flutter/material.dart';

class Container7 extends StatelessWidget {
  const Container7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/bg2.jpg'),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: const Text('Hello World;'),
    );
  }
}

 
// this example is for a container with Background Image From Assets

// bu ornekte arka plan icin gorsel kullaniyoruz (yerli gorsel)