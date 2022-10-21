// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baslik, Adres Kismi
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  height: 40,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Ev'),
                      ),
                      Text('Kadikoy, Goztepe'),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_right,
                          size: 32,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Satir1'),
                          Text('Satir2'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          // Buyuk Reklam Gorseli
          Image.asset('assets/images/bg3.jpg'),
          // Buyuk Reklam Gorseli Yazisi
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'BiTaksi Çağırmanin yeni yolu:',
                  textAlign: TextAlign.right,
                ),
                Text(
                  'GetirBitaksi ve sayir',
                  textAlign: TextAlign.right,
                ),
                Text(
                  'Yolculuğunuzu yapabilirsiniz',
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          // iconlar
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.brightness_1,
                  size: 5,
                  color: Color.fromARGB(142, 158, 158, 158),
                ),
                Icon(
                  Icons.brightness_1,
                  size: 6,
                  color: Color.fromARGB(186, 158, 158, 158),
                ),
                Icon(
                  Icons.brightness_1,
                  size: 9,
                  color: Color.fromRGBO(92, 61, 188, 1),
                ),
                Icon(
                  Icons.brightness_1,
                  size: 6,
                  color: Color.fromARGB(178, 158, 158, 158),
                ),
                Icon(
                  Icons.brightness_1,
                  size: 5,
                  color: Color.fromARGB(120, 158, 158, 158),
                ),
              ],
            ),
          ),
          // Merhaba Kullanici Yazisi
          Text('Merhaba Zeynep!'),
          // Arama Alani
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                border: Border.all(
                  color: Color.fromRGBO(92, 61, 188, 1),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Text('Neye ihtiyacin var?'),
                  Icon(Icons.mic),
                ],
              ),
            ),
          ),
          // Getir Kategorileri Satir 1
          Row(
            children: [
              Expanded(
                child: KutuTasarimim(
                  h: 100,
                ),
              ),
              Expanded(
                child: Column(
                  children: [KutuTasarimim(h: 40), KutuTasarimim(h: 40)],
                ),
              ),
            ],
          ),
          // Getir Kategorileri Satir 2
          Row(
            children: [
              Expanded(
                child: KutuTasarimim(),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(child: KutuTasarimim()),
                  Expanded(child: KutuTasarimim()),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}

class KutuTasarimim extends StatelessWidget {
  KutuTasarimim({
    Key? key,
    this.h = 40,
  }) : super(key: key);

  double h = 40;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(60, 158, 158, 158),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(child: Text('Kuutum')),
      ),
    );
  }
}
