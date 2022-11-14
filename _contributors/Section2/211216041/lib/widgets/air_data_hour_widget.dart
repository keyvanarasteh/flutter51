import 'package:flutter/material.dart';

class AirDataHour extends StatefulWidget {
  AirDataHour(
      {super.key,
      required this.hour,
      required this.degree,
      required this.icon});
  String hour;
  String degree;
  Icon icon;

  @override
  State<AirDataHour> createState() => _AirDataHourState();
}

class _AirDataHourState extends State<AirDataHour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.hour,
            style: const TextStyle(color: Colors.grey),
          ),
          widget.icon,
          Text(
            '${widget.degree}°',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
