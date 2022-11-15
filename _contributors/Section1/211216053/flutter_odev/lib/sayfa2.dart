import 'package:flutter/material.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/0c/32/97/0c3297f3516a415219c7e89e16a4a3d2.jpg'),
              ),
              Text(
                'Movie Archive',
                style: TextStyle(fontSize: 45),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 25.0),
                    Icon(
                      Icons.email,
                      size: 50,
                    ),
                    SizedBox(width: 10.0),
                    Text('211216053@stu.istinye.edu.tr',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
