import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed("/welcome");
            }, child: Text("Welcome Screen")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed("/rent");
            }, child: Text("Rent Screen")),

          ],
        ),
      ),

    );
  }
}