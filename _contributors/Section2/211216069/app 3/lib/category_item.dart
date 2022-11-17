import 'package:flutter/material.dart';

// ignore: camel_case_types
class category_item extends StatelessWidget {
  final String categoryTitle;
  final String categoryImage;
  final bool isSelected;
  const category_item({
    Key? key,
    required this.categoryTitle,
    required this.categoryImage,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 25,
          width: 100,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 240, 240),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 240, 240),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(categoryImage),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    categoryTitle,
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.orange : Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
