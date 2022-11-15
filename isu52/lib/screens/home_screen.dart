// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/my_input_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyInputField(
            hintText: 'Search for a product...',
            icon: Icon(Icons.search),
          ),
          MyInputField(
            hintText: 'Enter your name..',
            icon: Icon(Icons.person),
          ),
          MyInputField(
            hintText: 'Enter your e-mail address.',
            icon: Icon(Icons.password),
          ),
          Container(
            width: double.infinity,
            // color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.yellow,
                    child:Text('1'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    child:Text('2'),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: Colors.pink,
                    child:Text('3'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.purple,
                    child:Text('4'),
                  ),
                ),
              ]
            ),
          ),
          Column(
            children: [
              Text('Hello',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 10,),
              Text('World',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 20,),
              Text('Hi'),
              SizedBox(height: 30,),
              Text('Guys'),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () { 
                Navigator.of(context).pushNamed('/profile');
              }, child: Text('Profile'),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () { 
                Navigator.of(context).pushNamed('/foods');
              }, child: Text('Foods'),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () { 
                Navigator.of(context).pushNamed('/tab');
              }, child: Text('Tab'),),
              SizedBox(height: 30,),
            ],
          ),
        ]
      ),
    );
  }
}
