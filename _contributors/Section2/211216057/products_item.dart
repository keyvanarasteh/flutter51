// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPoint;

  const ProductItem({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productPoint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              color: Color.fromARGB(255, 240, 228, 228),
              height: 20,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
