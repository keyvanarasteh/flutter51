import 'package:flutter/material.dart';

class kutular extends StatelessWidget {
  final String Yol;
  final String categoryItem;

  const kutular({
    Key? key,
    required this.Yol,
    required this.categoryItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(-2, -2))
                  ],
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ClipRRect(
                      child: Image.asset(
                        Yol,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      categoryItem,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
