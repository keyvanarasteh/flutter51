import 'package:flutter/material.dart';

class Day extends StatefulWidget {
  Day({super.key, required this.day, required this.clicked});
  String day;
  bool clicked;

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 20),
      child: Container(
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.clicked
              ? const Color.fromARGB(255, 106, 94, 204)
              : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.day,
            style: TextStyle(
              color: widget.clicked ? Colors.white : Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
