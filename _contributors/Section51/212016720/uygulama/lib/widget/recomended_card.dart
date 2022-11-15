import 'package:flutter/material.dart';

// ignore: camel_case_types
class recomended_card extends StatelessWidget {
  final String networkimage;
  final String username;
  final String yorum;

  const recomended_card({
    Key? key,
    required this.networkimage,
    required this.username,
    required this.yorum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(networkimage),
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          child: Text(
                            username,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Text(yorum),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 3,
                            bottom: 3,
                          ),
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              //color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Center(
                        child: Icon(
                          Icons.verified,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
