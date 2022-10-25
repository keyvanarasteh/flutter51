// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/product_item.dart';

class CoffeeHomeScreen extends StatefulWidget {
  const CoffeeHomeScreen({super.key});

  @override
  State<CoffeeHomeScreen> createState() => _CoffeeHomeScreenState();
}

class _CoffeeHomeScreenState extends State<CoffeeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey.shade600,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Text 
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Find the best coffee for you',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                // fontFamily: 
              ),
            ),
          ),
          
          SizedBox(height: 25,),

          // Search Area
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,),
                hintText: "Find your coffee..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange.shade700,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
          ),
          
          // Categories
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem(
                  categoryTitle: 'Cappuccino',
                  isSelected: true,
                ),
                CategoryItem(
                  categoryTitle: 'Espresso',
                ),
                CategoryItem(
                  categoryTitle: 'Latte',
                ),
                CategoryItem(
                  categoryTitle: 'Milk',
                ),
                CategoryItem(
                  categoryTitle: 'Maciato',
                ),
              ],
            ),
          ),

          // Products
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductItem(
                  productName: "Cappuccino",
                  productImage: "assets/images/cappuccino.jpg",
                  productPrice: "4.00",
                  productDescription: "Made with milk",
                ),
                ProductItem(
                  productName: "Latte",
                  productImage: "assets/images/latte.jpg",
                  productPrice: "12.00",
                  productDescription: "Made with milk",
                ),
                ProductItem(
                  productName: "Cappuccino",
                  productImage: "assets/images/cappuccino.jpg",
                  productPrice: "4.00",
                  productDescription: "Made with milk",
                ),
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ]
      ),    
    );
  }
}
