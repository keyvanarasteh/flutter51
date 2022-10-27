
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {

  final String title;
  final String description;
  final String imagePath;
  final String price;

  const ProductBox({
    Key? key, required this.title, required this.description, required this.imagePath, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: EdgeInsets.only(top: 40,),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(35),
          ),
          width: 210,
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Product Image
              Container(
                transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                width: 160,
                child: Image.asset(imagePath),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -28.0, 0.0),
                child: Column(
                  children: [
                    // Product Name
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    // Product Description
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: 15,),
                    // Product Price
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_lira,),
                              Text(
                                price,
                                style: TextStyle(
                                  fontSize: 18,
                                )
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.add,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}