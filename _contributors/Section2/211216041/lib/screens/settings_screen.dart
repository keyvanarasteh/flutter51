import 'package:flutter/material.dart';
import 'package:uni_task/constants.dart' as AppConstants;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstants.mainColor,
      body: Center(
        child: Text(
          "Settings Screen",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
