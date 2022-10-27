// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.coffee),
            SizedBox(width:9,),
            Text('Latte'),
          ],
        ),
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 20,
            ), onPressed: () {
            },
          ),
        ],
        // leading: Icon(Icons.menu),
        elevation:0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 20,
            ), onPressed: () {
            },
          ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bell,
              size: 20,
            ),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}