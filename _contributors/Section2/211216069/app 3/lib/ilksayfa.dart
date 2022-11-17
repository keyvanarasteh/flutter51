// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'category_item.dart';

// ignore: camel_case_types
class ilksayfa extends StatelessWidget {
  const ilksayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              tooltip: 'search Icon',
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            tooltip: 'menü Icon',
            onPressed: () {},
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("asset/images/banner.jpg"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "New Release",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Nike Air",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Max 90",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                  width: double.infinity,
                  height: 65,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      category_item(
                        categoryTitle: 'Lifestyle',
                        categoryImage: "asset/images/lifestyle2.jpg",
                        isSelected: true,
                      ),
                      category_item(
                        categoryTitle: 'Basketball',
                        categoryImage: "asset/images/basketball.jpg",
                      ),
                      category_item(
                        categoryTitle: 'Running',
                        categoryImage: "asset/images/running.jpg",
                      ),
                      category_item(
                        categoryTitle: 'Sneaker',
                        categoryImage: "asset/images/row1.png",
                      ),
                      category_item(
                        categoryTitle: 'Spectator',
                        categoryImage: "asset/images/product1.jpg",
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "New Men's",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 50),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/creat.jpg'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Creter İmpact")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"99.56$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/shoes2.jpg'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Air Max Pre-Day")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"137.50$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 50),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/crampon.jpg'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Crampon")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"140.25$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/airmonarch.png'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Air Monarch")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"94.52$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 50),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/airjordan.png'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Air Jordan")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"89.32$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 252,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: 180,
                            height: 180,
                            child: Image.asset('asset/images/snekars.jpg'),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text("Men's Shoes")),
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Sneakrs")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(r"99.42$"),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(elevation: 0, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.orange,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: '',
        ),
      ]),
    );
  }
}
