import 'package:flutter/material.dart';

import '../class/title.dart';

class BottomTitles extends StatefulWidget {
  BottomTitle item;
  BottomTitles({Key? key,required this.item}) : super(key: key);

  @override
  State<BottomTitles> createState() => _BottomTitlesState();
}

class _BottomTitlesState extends State<BottomTitles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Text(widget.item.bottomTitle,style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            Expanded(child: Container(height: 0.1,color: Colors.grey,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.double_arrow,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
