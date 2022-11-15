// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_habit/home_page.dart';

class Twopage extends StatefulWidget {
  const Twopage({super.key});

  @override
  State<Twopage> createState() => _TwopageState();
}

class _TwopageState extends State<Twopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.transparent,
        title:
            const Text(style: TextStyle(color: Colors.black), "Wednesday, 24"),
        elevation: 0,
        actions: [
          IconButton(
            color: (Colors.black),
            icon: const Icon(Icons.date_range),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ((value) {
          if (value == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }
        } ),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(4),
              child: Icon(Icons.account_box_rounded),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              //Siyah Container
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    // ignore: sort_child_properties_last
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 120,
                    width: 250,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.menu_book_rounded,
                                color: Colors.white,
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Notification!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Now is the time to read the book, you can change it in settings.',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.info_outlined, color: Colors.white),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            //Takvim
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    CalendarIcon(
                      title: 'TUE',
                      day: '09',
                      renk: Colors.orange,
                    ),
                    CalendarIcon(title: 'WED', day: '10'),
                    CalendarIcon(title: 'THU', day: '11'),
                    CalendarIcon(title: 'FRI', day: '12'),
                    CalendarIcon(title: 'SAT', day: '13'),
                    CalendarIcon(title: 'SUN', day: '14'),
                    CalendarIcon(title: 'MON', day: '15'),
                    CalendarIcon(title: 'TUE', day: '16'),
                  ],
                ),
              ),
            ),
            //Etkinlik Text
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Tuesday Habit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            //Etkinlikler
            Row(
              children: [
                //Bicycle
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/2972/2972185.png',
                                  height: 50),
                              Icon(
                                Icons.verified,
                                color: Colors.red,
                                size: 36,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              'Bicycle',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text('07.00 for 10 km'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Running
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/5147/5147283.png',
                                  height: 50),
                              Icon(
                                Icons.verified,
                                color: Colors.red,
                                size: 36,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              'Running',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text('12.00 for 5 km'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Etkinlikler 2
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  //Bicycle
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/2972/2972185.png',
                                    height: 50),
                                Icon(
                                  Icons.verified,
                                  color: Colors.red,
                                  size: 36,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Bicycle',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text('07.00 for 10 km'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Running
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/5147/5147283.png',
                                    height: 50),
                                Icon(
                                  Icons.verified,
                                  color: Colors.red,
                                  size: 36,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Running',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text('12.00 for 5 km'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarIcon extends StatelessWidget {
  final String title;
  final String day;
  final Color renk;

  const CalendarIcon({
    Key? key,
    required this.title,
    required this.day,
    this.renk = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
            color: renk,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              day,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}