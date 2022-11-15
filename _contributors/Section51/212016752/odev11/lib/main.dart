// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, camel_case_types, unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.grey],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: Center(
            child: Column(children: [
              Container(
                height: 100,
                width: 100,
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        "İstanbul",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "14",
                        style: TextStyle(fontSize: 60),
                      ),
                      Column(
                        children: [
                          Text(
                            "°C",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ust(
                            derece: 20,
                            icon: Icons.sunny,
                            saat: '12:00',
                          ),
                          ust(
                            derece: 18,
                            icon: Icons.sunny,
                            saat: '14:00',
                          ),
                          ust(
                            derece: 17,
                            icon: Icons.cloud,
                            saat: '16:00',
                          ),
                          ust(
                            derece: 16,
                            icon: Icons.air,
                            saat: '18:00',
                          ),
                          ust(
                            derece: 14,
                            icon: Icons.air,
                            saat: '20:00',
                          ),
                          ust(
                            derece: 10,
                            icon: Icons.thunderstorm,
                            saat: '22:00',
                          ),
                          ust(
                            derece: 6,
                            icon: Icons.ac_unit,
                            saat: '00:00',
                          ),
                          ust(
                            derece: 6,
                            icon: Icons.ac_unit,
                            saat: '00:00',
                          ),
                          ust(
                            derece: 6,
                            icon: Icons.ac_unit,
                            saat: '00:00',
                          ),
                          ust(
                            derece: 6,
                            icon: Icons.ac_unit,
                            saat: '00:00',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                child: Expanded(
                  child: ListView(
                    children: <Widget>[
                      alt(
                          gun: 10,
                          gunu: 'Yarın',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 10),
                      alt(
                          gun: 11,
                          gunu: 'Cmt ',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 11),
                      alt(
                          gun: 12,
                          gunu: 'Paz  ',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 10),
                      alt(
                          gun: 13,
                          gunu: 'Pzt   ',
                          icons: Icons.sunny,
                          derece1: 20,
                          derece2: 14),
                      alt(
                          gun: 14,
                          gunu: 'Sal  ',
                          icons: Icons.sunny,
                          derece1: 20,
                          derece2: 14),
                      alt(
                          gun: 15,
                          gunu: 'Çar  ',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 13),
                      alt(
                          gun: 16,
                          gunu: 'Per  ',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 15),
                      alt(
                          gun: 17,
                          gunu: 'Cum',
                          icons: Icons.air,
                          derece1: 17,
                          derece2: 12),
                      alt(
                          gun: 18,
                          gunu: 'Cmt ',
                          icons: Icons.cloud,
                          derece1: 15,
                          derece2: 10),
                      alt(
                          gun: 19,
                          gunu: 'Paz  ',
                          icons: Icons.cloud,
                          derece1: 16,
                          derece2: 11),
                      alt(
                          gun: 20,
                          gunu: 'Pzt   ',
                          icons: Icons.cloud,
                          derece1: 14,
                          derece2: 10),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class alt extends StatelessWidget {
  final int gun;
  final String gunu;
  final int derece1, derece2;
  final IconData icons;
  alt(
      {required this.derece1,
      required this.icons,
      required this.derece2,
      required this.gun,
      required this.gunu});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child:
                      Text("$gun kasım $gunu", style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                  ),
                  child: Icon(icons, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 140,
                  ),
                  child: Text("$derece1/$derece2 °C",
                      style: TextStyle(fontSize: 15)),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ust extends StatelessWidget {
  final String saat;
  final int derece;
  final IconData icon;
  ust({required this.derece, required this.icon, required this.saat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(children: [
              Text("$saat"),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(icon),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("$derece°C"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
