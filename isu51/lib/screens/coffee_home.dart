// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/menu_element.dart';
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Avatar Image Header
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(radius: (56),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(54),
                          child: Image.asset("assets/images/avatar.jpg"),
                        )
                    ),
                    Text('Keyvan Arasteh'),
                  ],
                ),
              ),  
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  MenuElement(
                    title: "Home",
                    icon: Icon(Icons.home),
                  ),
                  MenuElement(
                    title: "Menu",
                    icon: Icon(Icons.list),
                  ),
                  MenuElement(
                    title: "Profile",
                    icon: Icon(Icons.person),
                  ),
                  MenuElement(
                    title: "Support",
                    icon: Icon(Icons.support),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title Heading
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Find the best coffee for you',
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            
            SizedBox(height: 25),
      
            // Search Area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find your coffee..',
                      prefixIcon: Icon(Icons.search,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade800,
                          width: 2,
                        ),
                    ),
                  ),
                ),
            ),
      
            SizedBox(height: 25),
            
            // Categories
            Container( 
              height: 60,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                      CategoryItem(
                        title: 'Cappuccino',
                        isSelected: true,
                      ),
                      CategoryItem(
                        title: 'Latte',
                      ),
                      CategoryItem(
                        title: 'Espresso',
                      ),
                      CategoryItem(
                        title: 'Milk',
                      ),
                      CategoryItem(
                        title: 'Maciato',
                      ),
                      CategoryItem(
                        title: 'Ice Latte',
                      ),
                  ],
                ),
              )
            ),
      
            SizedBox(height: 25,),
      
            // Products
            Container(
              height: 390,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductItem(
                      title: "Latte",
                      description: "Made by milk",
                      image: 'assets/images/latte.jpg',
                      price: '4.00',
                    ),
                    ProductItem(
                      title: "Cappuccino",
                      description: "Belli degil neyy",
                      image: 'assets/images/cappuccino.jpg',
                      price: '6.00',
                    ),
                    ProductItem(
                      title: "Espresso",
                      description: "Belli degil neyy",
                      image: 'assets/images/espresso.jpg',
                      price: '8.00',
                    ),
                    ProductItem(
                      title: "Milk",
                      description: "Belli degil neyy",
                      image: 'assets/images/milk.jpg',
                      price: '2.00',
                    ),
                  ],
                )
              ),
            ),
      
      
            SizedBox(height: 25,),
            
            // Special for you
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Special for you',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          
            SizedBox(height: 25,),

            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey.shade600,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey.shade600,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5),
      child: Container(
        padding: EdgeInsets.all(12),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/latte.jpg',
                width: 128,
                height: 128,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 180,
              padding: EdgeInsets.only(top: 15, left: 15,),
              child: Text('5 Coffee beans you must try!!',
                style: TextStyle(
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
