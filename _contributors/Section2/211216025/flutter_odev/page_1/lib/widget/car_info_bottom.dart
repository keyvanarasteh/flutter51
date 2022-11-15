// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:unicons/unicons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/cil.dart';

class car_info_bottom extends StatelessWidget {
  const car_info_bottom({
    Key? key,
    required this.personphoto,
    required this.personname,
    required this.personlocate,
    required this.carcapacity,
    required this.cargeartype,
    required this.carhorsepower,
    required this.carairbags,
    required this.carstopspeed,
    required this.cargaslevel,
  }) : super(key: key);

  final String carairbags;
  final String carcapacity;
  final String cargaslevel;
  final String cargeartype;
  final String carhorsepower;
  final String carstopspeed;
  final String personlocate;
  final String personname;
  final String personphoto;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Rent Details",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Person area
            // Person Photo
            Row(children: [
              Image(
                image: AssetImage(personphoto),
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              // Person Name
              Column(
                children: [
                  Row(
                    children: [Text(personname)],
                  ),
                  // Person Locate
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(UniconsLine.map_marker),
                      Text("İstanbul, Türkiye"),
                      Icon(UniconsLine.compass)
                    ],
                  ),
                ],
              ),
            ]),

            //Car Specifications area
            Row(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Specifications",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0, left: 60),
                    child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Car Capacity
                                Iconify(IconParkTwotone.baby_car_seat,
                                    color: Colors.cyan),
                                Text(carcapacity, style: TextStyle()),
                                SizedBox(width: 30,),
                                // Car GearType
                                Iconify(IconParkSolid.manual_gear, color: Colors.cyan),
                                Text(cargeartype, style: TextStyle()),
                                SizedBox(width: 30,),
                                // Car Horsepower
                                Iconify(Mdi.engine, color: Colors.cyan),
                                Text(carhorsepower, style: TextStyle())
                              ],
                            ),
                          
                      
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      // Car Bags
                      Iconify(Mdi.airbag, color: Colors.cyan),
                      Text(carairbags, style: TextStyle()),
                      SizedBox(width: 30,),
                      //Car TopSpeed
                      Iconify(Cil.speedometer, color: Colors.cyan),
                      Text(carstopspeed, style: TextStyle()),
                      SizedBox(width: 30,),
                      //Car GasLevel
                      Iconify(Mdi.gas_station, color: Colors.cyan),
                      Text(
                        cargaslevel,
                        style: TextStyle(),
                      )
                    ],
                  )
                ]),
                      
                    ),
                ],
              ),
            ]),
            SizedBox(height: 10,),
            Container(
                width: 200,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Book Now"), Icon(Icons.arrow_right_alt)],
                  ),
                )),
          ]),
        ));
  }
}
