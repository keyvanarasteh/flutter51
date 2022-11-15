import 'package:flutter/material.dart';

class second_page_box extends StatelessWidget {
  final String Yol;
  final String boxText;
  const second_page_box({
    required this.Yol,
    required this.boxText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Center(
          child: Container(
            width: 100,
            height: 45,
            decoration: BoxDecoration(
                color: Color.fromARGB(181, 183, 230, 238),
                borderRadius: BorderRadius.circular(18)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    child: Image.asset(
                      Yol,
                      color: Color.fromARGB(255, 37, 76, 107),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    boxText,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color.fromARGB(255, 59, 105, 143)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
