import 'dart:html';

import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("key1 arasteh",
      style: TextStyle(fontSize: 50, color: Colors.green)
      ),
      decoration: BoxDecoration(
        color: Colors.orange,
    
      ),
    );
     // BURASI SIZI BEKLIYOR
  }
}

// Container(child:...)
// Center(child:...)
// Text('Yazi')
// Image.network('address')
// Image.assets('address')
// Icon(Icons.queue_rounded)

// Row(children:[])
// Column(children:[])