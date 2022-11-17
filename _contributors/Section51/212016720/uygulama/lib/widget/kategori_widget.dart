import 'package:flutter/material.dart';

// ignore: camel_case_types
class kategori_view extends StatelessWidget {
  final String title;
  final bool isSelected;

  const kategori_view({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
            fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
      ),
      margin: EdgeInsets.only(left: 12),
      padding: EdgeInsets.only(
        left: 36,
        right: 36,
        top: 6,
        bottom: 6,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Color.fromARGB(255, 240, 127, 164) : Colors.black,
        ),
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? Color.fromARGB(255, 240, 127, 164) : Colors.black,
      ),
    );
  }
}
