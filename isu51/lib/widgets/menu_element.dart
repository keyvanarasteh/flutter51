
import 'package:flutter/material.dart';

class MenuElement extends StatelessWidget {

  final String title;
  final Icon icon;

  const MenuElement({
    Key? key,
    required  this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 30,
        top: 10,
        bottom:15,
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 5,),
          Text(title),
        ],
      ),
    );
  }
}