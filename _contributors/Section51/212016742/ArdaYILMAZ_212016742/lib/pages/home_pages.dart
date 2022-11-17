// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_button.dart';
import 'package:flutter_application_1/util/my_cards.dart';
import 'package:flutter_application_1/util/my_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // pagecomtrol
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {},
        backgroundColor: Colors.red,
        child: Icon(
          Icons.monetization_on,
          size: 32,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            IconButton(
              onPressed: (){} , 
              icon: Icon(
                Icons.home,
                size: 32,
                color: Color.fromARGB(255, 1, 26, 46),
                ),
            ),
            IconButton(
              onPressed: (){} , 
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Color.fromARGB(255, 68, 61, 0),
                ),
            ),
          ]),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          // App Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Cards',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
               
               // plus button
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 25),
          
          // Cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance:8.889,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 31,
                  color: Colors.orange[400],
                ),
                MyCard(
                  balance:8.358,
                  cardNumber: 123456789,
                  expiryMonth: 11,
                  expiryYear: 31,
                  color: Colors.blue[400],
                ),
                MyCard(
                  balance:2.899,
                  cardNumber: 123456789,
                  expiryMonth: 9,
                  expiryYear: 31,
                  color: Colors.yellow [400],
                ),
              ],
            ),
          ),
      
          SizedBox(height: 25),
          
          SmoothPageIndicator(
            controller: _controller, 
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
            ),
          
          SizedBox(height: 40),
          
          // 3 button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  //send
                  MyButton(
                    iconImagePath:'lib/icons/send-money.png', 
                    buttonText: 'Send',
                  ),
                  //pay
                  MyButton(
                    iconImagePath:'lib/icons/credit-cards.png', 
                    buttonText: 'Pay',
                  ),

                  //bils
                  MyButton(
                    iconImagePath:'lib/icons/bill.png', 
                    buttonText: 'Bills',
                  ),
              ],
            ),
          ),
         
          SizedBox(height: 40),
          
          // Column
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              // statistics
              MyList(
                iconImagePath: 'lib/icons/pie-chart.png', 
                tileTitle: 'Statistics', 
                tileSubTitle: 'Payment and Income',
              ),
              
              // transaction
              MyList(
                iconImagePath: 'lib/icons/transaction.png', 
                tileTitle: 'Transactions', 
                tileSubTitle: 'Transaction History',
              ),
              
            ],
          ),
        )
      ],
    ),
    )
  );
  }
}