// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import
import 'package:RentShow/widget/car_info_bottom.dart';
import 'package:RentShow/widget/car_models.dart';
import 'package:RentShow/widget/info_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

class Car_info extends StatefulWidget {
  const Car_info({super.key});

  @override
  State<Car_info> createState() => _Car_infoState();
}

class _Car_infoState extends State<Car_info> {
  bool isReadmore = false;

  Widget buildText(String text) {
    final styleButton=TextStyle(fontSize: 18,  fontWeight: FontWeight.bold);
   
    return ReadMoreText(
      text,
      trimLines:3 ,
      trimMode: TrimMode.Line,
      style: TextStyle(fontSize: 15),
      lessStyle: styleButton,
      moreStyle: styleButton,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 183, 182, 182)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              //top car area
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      info_widget(
                        carimage: "assets/images/BMW-M8.png",
                        carname: "Bmw M8",
                        carprice: "200/day",
                      ),
                    ],
                  ),
                ),
              ),
              // car text area
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: buildText(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              ),
                            ),
                          ],
                        ),
                        
                        Column(
                          children: [
                            car_info_bottom(
                                personphoto: "assets/images/bmw_logo.png",
                                personname: "Alperen Keskin",
                                personlocate: "İstanbul, Türkiye",
                                carcapacity: "2",
                                cargeartype: "Auto",
                                carhorsepower: "600",
                                carairbags: "5",
                                carstopspeed: "300",
                                cargaslevel: "90")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
