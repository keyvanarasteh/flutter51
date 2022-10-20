import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splash_bg.jpg'),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset('assets/images/logo2.png'),
      ),
    );
  }
}
