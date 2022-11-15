import 'package:flutter/material.dart';
import 'package:uygulama/widget/bottom_nav.dart';
import 'package:uygulama/widget/home_card.dart';
import 'package:uygulama/widget/home_drawer.dart';
import 'package:uygulama/widget/kategori_widget.dart';

import '../widget/recomended_card.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //left 12px
      //appbar çağır!
      appBar: AppBar(),

      //drawer çağır !
      drawer: const home_drawer(),

      //body !
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Hello User
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 36, left: 12),
                  child: const Text(
                    "Hello User !",
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            //empty row
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                )
              ],
            ),
            //kategori
            new Container(
                height: 30,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: const [
                        kategori_view(
                          title: "Tüm Ürünler",
                          isSelected: true,
                        ),
                        kategori_view(
                          title: "Elbise",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "T-shirt",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Gözlük",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Jeans",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Sortlar",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Elbise",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "T-shirt",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Gözlük",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Jeans",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Sortlar",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Elbise",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "T-shirt",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Gözlük",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Jeans",
                          isSelected: false,
                        ),
                        kategori_view(
                          title: "Sortlar",
                          isSelected: false,
                        ),
                      ],
                    )
                  ],
                )),
            //empty row
            Row(
              children: const [Padding(padding: EdgeInsets.all(15))],
            ),
            //new arrival
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
                        'Müşteri Yorumları',
                        style: TextStyle(
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
            //
            new Container(
                height: 300,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: const [
                        home_card(
                          title: "Kadın Kazak",
                          description: "Siyah-Beyaz Çizgili",
                          imagesrc: "images/homecardimages/kadınkazak.png",
                        ),
                        home_card(
                          title: "Mont",
                          description: "Erkek Mont",
                          imagesrc: "images/homecardimages/erkekmont.png",
                        ),
                        home_card(
                          title: "Elbise",
                          description: "Kadın Günlük Elbise",
                          imagesrc: "images/homecardimages/kadınelbise.png",
                        ),
                        home_card(
                          title: "Gözlük",
                          description: "Erkek Polo Gözlük",
                          imagesrc: "images/homecardimages/glass.jpeg",
                        ),
                        home_card(
                          title: "Ceket",
                          description: "Kolej Ceket",
                          imagesrc: "images/homecardimages/images5.jpeg",
                        ),
                        home_card(
                          title: "Kadın Kazak",
                          description: "Siyah-Beyaz Çizgili",
                          imagesrc: "images/homecardimages/kadınkazak.png",
                        ),
                        home_card(
                          title: "Mont",
                          description: "Erkek Mont",
                          imagesrc: "images/homecardimages/erkekmont.png",
                        ),
                        home_card(
                          title: "Elbise",
                          description: "Kadın Günlük Elbise",
                          imagesrc: "images/homecardimages/kadınelbise.png",
                        ),
                        home_card(
                          title: "Gözlük",
                          description: "Erkek Polo Gözlük",
                          imagesrc: "images/homecardimages/glass.jpeg",
                        ),
                        home_card(
                          title: "Ceket",
                          description: "Kolej Ceket",
                          imagesrc: "images/homecardimages/images5.jpeg",
                        )
                      ],
                    ),
                  ],
                )),
            //empty row
            Row(
              children: const [Padding(padding: EdgeInsets.only(top: 30))],
            ),
            //Recomended
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              "Kullanıcı Yorumları",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 47, 95, 134),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.only(left: 190),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Icon(Icons.more_horiz)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            //müşteri yorumları

            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      recomended_card(
                          networkimage:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Creative-Tail-People-speaker.svg/2048px-Creative-Tail-People-speaker.svg.png',
                          username: "Em***an İ***k",
                          yorum: "Tam aradığım gibi.Harika.."),
                      recomended_card(
                          networkimage:
                              'https://i0.wp.com/www.pngitem.com/pimgs/m/537-5372558_flat-man-icon-png-transparent-png.png',
                          username: "Ze**** A***",
                          yorum: "Üzerimde istediğim gibi"),
                      recomended_card(
                          networkimage:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Creative-Tail-People-speaker.svg/2048px-Creative-Tail-People-speaker.svg.png',
                          username: "Em***an İ***k",
                          yorum: "Tam aradığım gibi.Harika.."),
                      recomended_card(
                          networkimage:
                              'https://i0.wp.com/www.pngitem.com/pimgs/m/537-5372558_flat-man-icon-png-transparent-png.png',
                          username: "Ze**** A***",
                          yorum: "Üzerimde istediğim gibi"),
                      recomended_card(
                          networkimage:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Creative-Tail-People-speaker.svg/2048px-Creative-Tail-People-speaker.svg.png',
                          username: "Em***an İ***k",
                          yorum: "Tam aradığım gibi.Harika.."),
                      recomended_card(
                          networkimage:
                              'https://i0.wp.com/www.pngitem.com/pimgs/m/537-5372558_flat-man-icon-png-transparent-png.png',
                          username: "Ze**** A***",
                          yorum: "Üzerimde istediğim gibi")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const bottom_nav(),
    );
  }
}
