// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../widget/car_company.dart';
import '../widget/car_models.dart';

class RentScreen extends StatefulWidget {
  const RentScreen({super.key});

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Floating Action button area
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(UniconsLine.bars, color: Colors.black,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //search area
              Padding(
                padding: const EdgeInsets.only(top: 130.0, right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)),
                    hintText: "Search Car For Rent",
                    hintStyle: TextStyle(color: Colors.black,),
                    prefixIcon: Icon(
                      UniconsLine.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // Cars company area
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      car_company(
                        companyimage: "assets/images/bmw_logo.png",
                      ),
                      car_company(
                        companyimage: "assets/images/jesko-logo.png",
                      ),
                      car_company(companyimage: "assets/images/Ford_logo.png"),
                      car_company(companyimage: "assets/images/nissan-logo.png"),
                      car_company(
                          companyimage: "assets/images/Rolls-Royce-logo.png"),
                      car_company(
                          companyimage: "assets/images/lamborghini-logo.png"),
                    ],
                  ),
                ),
              ),
              // Heading Area
              Container(
                width: double.infinity,
                height: 50,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Available Cars Near You",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        UniconsLine.exchange,
                        size: 20,
                      )
                    ],
                  )
                ]),
              ),
              // Car List area
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10, 
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    //scrollDirection: Axis.vertical,
                    children: [
                      car_models(
                        carimage: "assets/images/BMW-M8.png",
                        carname: "Bmw M8",
                        carprice: "200/day",
                        carcapacity: "4",
                        cargeartype: "Auto",
                      ),
                      car_models(
                        carimage: "assets/images/jesko.png",
                        carname: "Koenigsegg Agera S",
                        carprice: "1000/day",
                        carcapacity: "2",
                        cargeartype: "Auto",
                      ),
                      car_models(
                        carimage: "assets/images/Shelby.png",
                        carname: "Ford Mustang",
                        carprice: "300/day",
                        carcapacity: "2",
                        cargeartype: "Auto",
                      ),
                      car_models(
                        carimage: "assets/images/gtr.png",
                        carname: "Nissan Gtr",
                        carprice: "150/day",
                        carcapacity: "2",
                        cargeartype: "Auto",
                      ),
                      car_models(
                        carimage: "assets/images/cullinan.png",
                        carname: "Rolls Royce Cullinan",
                        carprice: "350/day",
                        carcapacity: "4",
                        cargeartype: "Auto",
                      ),
                      car_models(
                        carimage: "assets/images/urus.png",
                        carname: "Lamborghini Urus",
                        carprice: "300/day",
                        carcapacity: "4",
                        cargeartype: "Manuel",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(size: 30, color: Colors.grey[800], UniconsLine.home),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(size: 30, color: Colors.grey[800], UniconsLine.heart),
            label: ""),
        BottomNavigationBarItem(
            icon:
                Icon(size: 30, color: Colors.grey[800], UniconsLine.map_marker),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(size: 30, color: Colors.grey[800], UniconsLine.bell),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
                size: 30, color: Colors.grey[800], UniconsLine.user_circle),
            label: ""),
      ]),
    );
  }
}
