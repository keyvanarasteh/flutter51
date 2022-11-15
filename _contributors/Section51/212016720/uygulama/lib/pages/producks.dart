import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uygulama/pages/home_view.dart';
import 'package:uygulama/widget/bottom_nav.dart';
import 'package:uygulama/widget/home_card.dart';
import 'package:uygulama/widget/home_drawer.dart';

class producks extends StatelessWidget {
  const producks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: home_drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 340,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Icon(
                                Icons.search_outlined,
                                size: 35,
                              )),
                          Container(
                              padding: EdgeInsets.only(right: 130),
                              child: Text(
                                "Search",
                                style: TextStyle(fontSize: 18),
                              )),
                          Container(
                            padding: EdgeInsets.only(left: 1, right: 10),
                            child: Icon(
                              Icons.keyboard_voice_sharp,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      )),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'NEW ARRIAL',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          home_card(
                            title: "Beyaz Kazak",
                            description: "Beyaz Kazak",
                            imagesrc: "images/homecardimages/beyazkazak.png",
                          ),
                          home_card(
                              title: "Erkek",
                              description: "Erkek Ceket",
                              imagesrc: "images/homecardimages/erkekceket.jpg")
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        home_card(
                            title: "Kadın Elbise",
                            description: "Kadın Elbise",
                            imagesrc: "images/homecardimages/kadınelbise.png"),
                        home_card(
                            title: "Erkek Gözlük",
                            description: "Erkek Gözlük",
                            imagesrc: "images/homecardimages/glass.jpeg")
                      ],
                    ),
                    Row(
                      children: [
                        home_card(
                            title: "Beyaz Kazak",
                            description: "Beyaz Kazak",
                            imagesrc: "images/homecardimages/beyazkazak.png"),
                        home_card(
                            title: "Erkek",
                            description: "Erkek Ceket",
                            imagesrc: "images/homecardimages/erkekceket.jpg")
                      ],
                    ),
                    Row(
                      children: [
                        home_card(
                            title: "Kadın Elbise",
                            description: "Kadın Elbise",
                            imagesrc: "images/homecardimages/kadınelbise.png"),
                        home_card(
                            title: "Erkek Gözlük",
                            description: "Erkek Gözlük",
                            imagesrc: "images/homecardimages/glass.jpeg")
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottom_nav(),
    );
  }
}
