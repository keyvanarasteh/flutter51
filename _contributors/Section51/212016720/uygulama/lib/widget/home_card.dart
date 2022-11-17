import 'package:flutter/material.dart';

class home_card extends StatelessWidget {
  final String title;
  final String description;
  final String imagesrc;

  const home_card({
    Key? key,
    required this.title,
    required this.description,
    required this.imagesrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 12),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 180,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                width: 170,
                height: 190,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    imagesrc,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: 15,
                    )),
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.rtl,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          color: Color.fromARGB(255, 47, 95, 134),
                          fontSize: 12,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Container(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 251, 0, 0),
                      size: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                            offset: Offset(2, 2),
                          )
                        ]),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
