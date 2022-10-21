import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          width: 130,
          'assets/images/logo3.png',
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 53, 53, 54),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splash2.jpg'),
        ),
      ),
    );
  }
}
