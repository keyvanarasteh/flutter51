// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/cil.dart';

class car_models extends StatelessWidget {
  const car_models(
      {Key? key,
      required this.carname,
      required this.carcapacity,
      required this.cargeartype,
      required this.carimage,
      required this.carprice})
      : super(key: key);

  final String carcapacity;
  final String cargeartype;
  final String carimage;
  final String carname;
  final String carprice;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/info");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey.shade200,
                  spreadRadius: 1,
                )
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            // car image
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(carimage),
                      width: double.infinity,
                      height: 200,
                    ),
                    // car name
                    Text(
                      carname,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    // car price
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.black,
                              ),
                              Text(
                                carprice,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          // Seats
                          Row(
                            children: [
                              Iconify(IconParkTwotone.baby_car_seat,
                                color: Colors.cyan,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                carcapacity,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                ),
                              ),
                            ],
                          ),
                          // Gear
                          Row(
                            children: [
                              Iconify(IconParkSolid.manual_gear,
                                color: Colors.cyan,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                cargeartype,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
