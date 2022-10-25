
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  final String productName;
  final String productDescription;
  final String productPrice;
  final String productImage;


  const ProductItem({
    Key? key,
    required this.productName,
    required this.productDescription,
    required this.productImage,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(37, 40, 45, 1),
              Color.fromRGBO(13, 16, 21, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(productImage)
              ),
            ),
            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 19,
                    )
                  ),
                  SizedBox(height: 5),
                  // Product Description
                  Text(
                    productDescription,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            // Product Price
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.orange,

                      ),
                      Text(productPrice),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

