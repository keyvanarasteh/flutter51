import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: const Text('Hello World'),
      width: double.infinity,
      height: double.infinity,
    ); // BURASI SIZI BEKLIYOR
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