// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isu52/widgets/my_input_field.dart';

import '../widgets/category_item.dart';
import '../widgets/product_box.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: FaIcon(
                FontAwesomeIcons.barsStaggered,
                size: 20,
                color: Colors.grey.shade600,
              ), onPressed: () {  },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: FaIcon(
                    FontAwesomeIcons.basketShopping,
                    size: 20,
                    color: Colors.grey.shade600,
                  ), onPressed: () {  },
            ),
          ),
        ]
      ),
      body: Column(
        children: [
          // Leading Text
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            child: Text(
              'Delicious food for you',
              style: TextStyle(
                fontSize: 40,
                // fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          SizedBox(height: 25),

          // Search
          MyInputField(hintText: 'Search your food..', icon: Icon(Icons.search)),
          
          SizedBox(height: 25),

          // Categories
          
          Container(
            width: double.infinity,
            height: 40,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    title: 'Burger',
                    isSelected: true,
                  ),
                  CategoryItem(
                    title: 'Sandwich',
                    isSelected: false,
                  ),
                  CategoryItem(
                    title: 'Pasta',
                    isSelected: false,
                  ),
                  CategoryItem(
                    title: 'Salad',
                    isSelected: false,
                  ),
                  CategoryItem(
                    title: 'Drink',
                    isSelected: false,
                  ),
                  CategoryItem(
                    title: 'Soup',
                    isSelected: false,
                  ),
                  
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          // Products

          Container(
            width: double.infinity,
            height: 290,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductBox(
                    title: 'Chicken Fries', 
                    description: 'Large, Standard', 
                    imagePath: 'assets/images/food1.png', 
                    price: '89.00',
                  ),
                  ProductBox(
                    title: 'Black Steak', 
                    description: 'Large, Standard', 
                    imagePath: 'assets/images/food2.png', 
                    price: '498.00',
                  ),
                  ProductBox(
                    title: 'Big Biff', 
                    description: 'Large, Standard', 
                    imagePath: 'assets/images/food3.png', 
                    price: '219.00',
                  ),
                ],
              ),
            ),

          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.person,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.clockRotateLeft,
              size: 20,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
