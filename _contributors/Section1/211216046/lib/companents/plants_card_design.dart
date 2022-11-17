// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/class/plants_info.dart';
import '../screens/description_page.dart';

class PlantsCardDesign extends StatefulWidget {
  PlantsInfo item;
  PlantsCardDesign({super.key, required this.item});

  @override
  State<PlantsCardDesign> createState() => _PlantsCardDesignState();
}

class _PlantsCardDesignState extends State<PlantsCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20),
      child: GestureDetector (
        onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionPage(item: widget.item,),));
        }, 
        child: Column(
          children: [
            Image.asset(widget.item.images),
            Text(
              widget.item.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(widget.item.subtitle),
            ),
            Row(
              children: [
                Text("\$${widget.item.price}",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25,),),
                IconButton(onPressed: (() {
                  
                }), icon: Icon(Icons.add_circle_outline) )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
