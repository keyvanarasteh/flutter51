// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/profiles_widget.dart';

class AnaEkrann extends StatefulWidget {
  const AnaEkrann({super.key});

  @override
  State<AnaEkrann> createState() => _AnaEkrannState();
}

class _AnaEkrannState extends State<AnaEkrann> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon,text,icon
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    color: Colors.amber,
                    size: 30,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "eWalle",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: Color.fromARGB(255, 97, 7, 109),
                  ),
                ),
              )
            ],
          ),
        ),
        //text(account overview)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Account Overview",
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 170, 170),
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
        //container current blace
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 216, 216),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      flex: 9,
                      child: Container(
                          alignment: Alignment(-1, 0),
                          width: 400,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "20,600",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Current balence",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(Icons.plus_one),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //text(send money), icon(qr)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Send Money",
                    style: TextStyle(
                        color: Color.fromARGB(255, 104, 15, 119), fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.qr_code_scanner,
                    color: Color.fromARGB(255, 57, 4, 66),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        //icon(plus), userss
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              profiles_widget(),
              profiles_widget(),
              profiles_widget(),
              profiles_widget(),
              profiles_widget(),
              profiles_widget(),
            ],
          ),
        ),
        //text(services), icon(setting)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Services",
                    style: TextStyle(
                        color: Color.fromARGB(255, 104, 15, 119), fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.miscellaneous_services,
                    color: Color.fromARGB(255, 57, 4, 66),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        //2 row, 4 expanded
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.swap_vert_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Send Money",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.swap_vert_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Receive Money",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.phone_android),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mobile Prepaid",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.electric_bolt),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Electricity Bill",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.label),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Cheshback Offer",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.movie),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Movie Tickets",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.flight),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Flight Tickets",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 202, 202),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.more_horiz_sharp),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "More Options",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


