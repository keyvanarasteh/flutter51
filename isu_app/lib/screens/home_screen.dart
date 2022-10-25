// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          // Heading Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Find the best coffee for you.",
              style: TextStyle(
                fontSize: 60,
                fontFamily: 'BebasNeue',
              ),
            ),
          ),
          SizedBox(height: 25),
          // Search Box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find your coffee..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          // Horizontal Scroll List
          Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCategory(
                    categoryTitle: 'Cappuccino',
                    isSelected: true,
                  ),
                  ProductCategory(categoryTitle: 'Espresso'),
                  ProductCategory(categoryTitle: 'Latte'),
                  ProductCategory(categoryTitle: 'Flat White'),
                ],
              )),
          // Horizontal Product List
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductItem(
                  productName: 'Cappuccino',
                  productDescription: 'Laktozsuz Sutle',
                  productImage: 'assets/images/cappuccino.jpg',
                  productPrice: '\$4.00',
                ),
                ProductItem(
                  productName: 'Espresso',
                  productDescription: 'Single Shot',
                  productImage: 'assets/images/espresso.jpg',
                  productPrice: '\$6.00',
                ),
                ProductItem(
                  productName: 'Latte',
                  productDescription: 'Single Shot Espresso',
                  productImage: 'assets/images/latte.jpg',
                  productPrice: '\$12.00',
                ),
                ProductItem(
                  productName: 'Milk',
                  productDescription: 'Sade Sut',
                  productImage: 'assets/images/milk.jpg',
                  productPrice: '\$2.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCategory extends StatelessWidget {
  final String categoryTitle;
  final bool isSelected;

  const ProductCategory(
      {Key? key, required this.categoryTitle, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        categoryTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productPrice;

  const ProductItem({
    Key? key,
    this.productName = '',
    this.productDescription = '',
    this.productPrice = '',
    this.productImage = 'assets/images/latte.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(productImage),
            ),
            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 4),
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
            // Product Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productPrice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
