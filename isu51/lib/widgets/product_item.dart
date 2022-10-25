
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  final String title;
  final String image;
  final String price;
  final String description;

  const ProductItem({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(36),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(37, 40, 45, 1),
              Color.fromRGBO(13, 16, 21, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Image.asset(
                  image,
                  width: 210,
                  height: 210,
                  fit: BoxFit.cover,
                
                ),
              ),
            ),
            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Product Description
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    )
                  ),
                ],
              ),
            ),
            // Product Price
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.orange,
                        size: 30,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      Icons.add, 
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
