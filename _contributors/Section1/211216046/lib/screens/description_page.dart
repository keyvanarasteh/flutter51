// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../class/plants_info.dart';

class DescriptionPage extends StatefulWidget {
  PlantsInfo item;
  DescriptionPage({super.key, required this.item});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 118, 151, 74),
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            // ignore: sort_child_properties_last
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(150.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 118, 151, 74),
                                borderRadius: BorderRadius.circular(25)),
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (() {}),
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                ))),
                      ),
                    ],
                  ),
                  Expanded(
                      flex: 6,
                      child: Image.asset(
                        widget.item.images,
                        fit: BoxFit.fill,
                        width: 200,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Row(
                      children: [
                        Icon(
                          Icons.more_vert,
                          size: 40,
                          color: Color.fromARGB(100, 118, 151, 74),
                        ),
                        Container(
                          width: 350,
                          child: Text(
                           widget.item.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Container(
                              width: 250,
                              child: Text(
                                 widget.item.subtitle
                                 ),
                            ),
                          ),
                          Row(children: [
                            Text(
                               "\$${widget.item.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 55,
                          color: Colors.white,
                          Icons.design_services,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Height",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "80cm - 100cm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 55,
                          color: Colors.white,
                          Icons.device_thermostat,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Temperature",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "18°C - 25°C",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: Colors.white,
                          Icons.water_drop_outlined,
                          size: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Pot",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "Self Watering Pot",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
