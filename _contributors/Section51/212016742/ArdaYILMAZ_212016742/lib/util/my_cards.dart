// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard( {
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 60,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$' + balance.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // card number
                      Text(
                        cardNumber.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),  
                      // card experiy date
                      Text(
                        expiryMonth.toString() + '/' + expiryYear.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}