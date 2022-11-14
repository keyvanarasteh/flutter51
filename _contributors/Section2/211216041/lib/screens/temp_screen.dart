import 'package:flutter/material.dart';
import 'package:uni_task/constants.dart' as AppConstants;

class TempScreen extends StatefulWidget {
  const TempScreen({super.key});

  @override
  State<TempScreen> createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstants.mainColor,
      body: Center(
        child: Text(
          "Temp Screen",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
