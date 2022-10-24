import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //cuzdan, para ve iki icon
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    child: Text(
                      "Cüzdan",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 253, 253),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    child: Text(
                      "5834",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 253, 253),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.money,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_circle_sharp,
                  ),
                ),
              ),
            ],
          ),
          //hediye çeki1
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        alignment: Alignment(-1, 0),
                        child: Text(
                          "Trendyol 100TL Hediye Çeki!",
                          style: TextStyle(fontSize: 20),
                          
                        ),
                      ),
                      Container(
                        alignment: Alignment(-1, 0),
                        height: 20,
                        child: Text(
                          "Son Kullanım Tarihi: 10.10.2022",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 122, 62),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("assets/images/Trendyol.png",
                          height: 20,
                          width: 60,
                          ),
                        ),
                        Text("100TL",
                        style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        ),
                        
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hediye Çeki",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                        ),
                        ),
                      ),
                      ],
                    ),
                  )
                ),
              ),
            ],
          ),
          //hediye çeki1
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        alignment: Alignment(-1, 0),
                        child: Text(
                          "Trendyol 200TL Hediye Çeki!",
                          style: TextStyle(fontSize: 20),
                          
                        ),
                      ),
                      Container(
                        alignment: Alignment(-1, 0),
                        height: 20,
                        child: Text(
                          "Son Kullanım Tarihi: 15.10.2022",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 122, 62),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("assets/images/Trendyol.png",
                          height: 20,
                          width: 60,
                          ),
                        ),
                        Text("200TL",
                        style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        ),
                        
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hediye Çeki",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                        ),
                        ),
                      ),
                      ],
                    ),
                  )
                ),
              ),
            ],
          ),
          //hediye çeki1
          Row(
           children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        alignment: Alignment(-1, 0),
                        child: Text(
                          "Trendyol 300TL Hediye Çeki!",
                          style: TextStyle(fontSize: 20),
                          
                        ),
                      ),
                      Container(
                        alignment: Alignment(-1, 0),
                        height: 20,
                        child: Text(
                          "Son Kullanım Tarihi: 20.10.2022",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 122, 62),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("assets/images/Trendyol.png",
                          height: 20,
                          width: 60,
                          ),
                        ),
                        Text("300TL",
                        style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        ),
                        
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hediye Çeki",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                        ),
                        ),
                      ),
                      ],
                    ),
                  )
                ),
              ),
            ],
          ),
          //hediye çeki1
          Row(
           children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        alignment: Alignment(-1, 0),
                        child: Text(
                          "Trendyol 400TL Hediye Çeki!",
                          style: TextStyle(fontSize: 20),
                          
                        ),
                      ),
                      Container(
                        alignment: Alignment(-1, 0),
                        height: 20,
                        child: Text(
                          "Son Kullanım Tarihi: 25.10.2022",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 122, 62),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("assets/images/Trendyol.png",
                          height: 20,
                          width: 60,
                          ),
                        ),
                        Text("400TL",
                        style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        ),
                        
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hediye Çeki",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                        ),
                        ),
                      ),
                      ],
                    ),
                  )
                ),
              ),
            ],
          ),
          //sosyal, kampanya,şifre gir, hediyeler, cüzdan
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 252, 156, 92),
                  child: Column(
                    children: [
                      Icon(Icons.coffee),
                      Text("Sosyal",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 252, 156, 92),
                  child: Column(
                    children: [
                      Icon(Icons.feedback_rounded),
                      Text(
                        "Kampanya",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 156, 92),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.password_rounded),
                      Text(
                        "Şifre Gir",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 252, 156, 92),
                  child: Column(
                    children: [
                      Icon(Icons.card_giftcard),
                      Text(
                        "Hediyeler",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 252, 156, 92),
                  child: Column(
                    children: [
                      Icon(Icons.coffee),
                      Text("Sosyal",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
