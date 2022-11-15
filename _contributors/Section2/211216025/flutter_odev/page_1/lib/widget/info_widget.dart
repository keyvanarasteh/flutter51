// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class info_widget extends StatelessWidget {
  
  final String carname;
  final String carprice;
  final String carimage;
  const info_widget(
      {Key? key,
      required this.carname,
      required this.carimage,
      required this.carprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.shade200,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/rent");
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [BoxShadow(
                blurRadius: 1,
                color: Colors.grey.shade200,
                spreadRadius: 1,
                
              )]
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 15,
                      ),
                    )),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Icon(Icons.favorite_border, size: 15,),
                )
              ],
            ),
          ),

          // ignore: prefer_const_literals_to_create_immutables
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                carname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Row(
                  
                  children: [
                    // Price
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          carprice,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage(carimage),
                width: double.infinity,
                height: 200,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
