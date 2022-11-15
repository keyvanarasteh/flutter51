// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_odev/screens/Ballooning.dart';
import 'package:flutter_odev/screens/Camping_Page.dart';
import 'package:flutter_odev/screens/Second_Page.dart';
import 'package:flutter_odev/widgets/topRated.dart';

import '../widgets/categoriesItem.dart';
import '../widgets/location.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    log("sXKZKCKLŞZXCŞLKXZŞLKCŞLK");

    return Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Do u want travel ?",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 26, 123, 202)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        children: [
                          kutular(
                              Yol: "images/camping.png",
                              categoryItem: "Camping"),
                          kutular(
                              Yol: "images/c_hiking.png",
                              categoryItem: "Hiking"),
                          kutular(
                              Yol: "images/c_bike.png",
                              categoryItem: "Bicycle"),
                          kutular(
                              Yol: "images/c_swimming.png",
                              categoryItem: "Swimming"),
                          kutular(
                              Yol: "images/c_ballooning.png",
                              categoryItem: "Ballooning"),
                          kutular(
                              Yol: "images/c_history.png",
                              categoryItem: "History"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: Text(
                            "Top Rated",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondPage(
                                              Yol:
                                                  "images/yerebatan-sarnici2.jpg",
                                              yerBaslik: "Yerebatan Sarnıcı",
                                              yerDetay:
                                                  "Yerebatan Sarnıcı İstanbul'da şehrin su ihtiyacını karşılamak üzere 526-527 senelerinde yaptırılmış kapalı su sarnıcı.",
                                              yerLike: "10 256",
                                              yerMesafe: "10 km",
                                              yerRatio: "4.6",
                                              yerZaman: "1 days",
                                            )));
                              },
                              child: Kutular(
                                  Yol: "images/yerebatan-sarnici.jpg",
                                  ratedText: "Turistlik",
                                  ratedText2: "Ayasofya,Yerebatan Sarnici"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Camping_Page(
                                              Yol: "images/fethiye.jpg",
                                              yerBaslik: "Fethiye Kabak Koyu",
                                              yerDetay:
                                                  "Kabak Koyu’nda doğa ile iç içe kamp yapılabilecek çok sayıda alan bulunmaktadır. Özellikle de genç doğa severlerin son zamanlarda en sık tercih ettiği kamp alanları arasında yer almaktadır. Kabak Koyu’nda aynı zamanda bir de çakıllı plaj bulunmaktadır.",
                                              yerLike: "12 256",
                                              yerMesafe: "8 km",
                                              yerRatio: "4.2",
                                              yerZaman: "7 days",
                                            )));
                              },
                              child: Kutular(
                                  Yol: "images/fethiye.jpg",
                                  ratedText: "Camping",
                                  ratedText2: "Fethiye,Kabak Koyu"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Ballooning(
                                              Yol:
                                                  "images/kapadokya_ballon.jpg",
                                              yerBaslik: "Kapadokya Balon Turu",
                                              yerDetay:
                                                  "Kapadokya, Türkiye'nin önemli turizm bölgelerinden bir tanesidir. Buradaki yanar dağların binlerce yıl önceki faaliyetlerinin sonucunda çok nadir görülen bir doğa olayı meydana gelmiştir. Büyüleyici güzelliği ile burası UNESCO dünya Kültür Mirası listesinde yer almaktadır.  ",
                                              yerLike: "70 256",
                                              yerMesafe: "50 km",
                                              yerRatio: "4.8",
                                              yerZaman: "1 hour",
                                            )));
                              },
                              child: Kutular(
                                  Yol: "images/kapadokya_ballon.jpg",
                                  ratedText: "Ballooning",
                                  ratedText2: "Kapadokya,Balon Turu"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Ballooning(
                                              Yol:
                                                  "images/aspendos-antalya.jpg",
                                              yerBaslik: "Antalya",
                                              yerDetay:
                                                  "Aspendos veya Belkıs, Antalya ili Serik ilçesinde bulunan Belkıs köyünde yer alan antik tiyatrosuyla meşhur bir antik kenttir. Pamfilya'nın en zengin şehirlerinden birisidir. Antik tiyatrolar arasında en iyi şekilde korunarak gelmiş bir açık hava tiyatrosudur.  ",
                                              yerLike: "21 256",
                                              yerMesafe: "1 km",
                                              yerRatio: "4.7",
                                              yerZaman: "1-2 hour",
                                            )));
                              },
                              child: Kutular(
                                  Yol: "images/aspendos-antalya.jpg",
                                  ratedText: "History",
                                  ratedText2: "Antalya,Serik"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Locations",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          children: [
                            Asagi(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: bottomBar());
  }

  BottomNavigationBar bottomBar() => BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (_currentIndex != index) {
              _currentIndex = index;
            }
          });
        },
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 47, 173, 204),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      );
}
