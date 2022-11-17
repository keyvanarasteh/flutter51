// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(12),
          height: 50,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              WidgetICreated(
                profileTitle: "Home",
                isSelected: true,
              ),
              WidgetICreated(
                profileTitle: "Profile",
              ),
              WidgetICreated(
                profileTitle: "Accounts",
              ),
              WidgetICreated(
                profileTitle: "Transaction",
              ),
              WidgetICreated(
                profileTitle: "Stats",
              ),
              WidgetICreated(
                profileTitle: "Settings",
              ),
              WidgetICreated(
                profileTitle: "Help",
              ),
            ],
          ),
        );
  }
}