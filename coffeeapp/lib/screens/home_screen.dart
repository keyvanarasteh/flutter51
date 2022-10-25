// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/menu_list_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.person),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.info),
          ),
        ],
        //  leading: Icon(Icons.menu),
        title: Text('ISU Tech'),

      ),
      drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    child: CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                  )
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    MenuListItem(
                    ),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                    MenuListItem(),
                  ],
                ),
              ),
            ],
          ),
      ),
      body: Center(
        child: Column(
          children: [
            // Baslik Yazim
            Text(
              "Hello ISU Students.",
              style: TextStyle(
                color: Colors.purple,
                // fontFamily: 'BebasNeue',
                fontSize: 36,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic
              ),
            ),
            // Ana tablarim
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Row(children: [
                Expanded(
                  flex:1,
                  child: Container(color:Colors.blue, child:Text('1'))),
                Expanded(
                  flex:2,
                  child: Container(color:Colors.yellow, child:Text('2'))),
                Expanded(
                  flex:5,
                  child: Container(color:Colors.red, child:Text('3'))),
                Expanded(
                  flex:2,
                  child: Container(color:Colors.green, child:Text('4'))),
              ],),
            ),
            // Mesaj Tusum
            Row(
              children: [
                Icon(Icons.chat),
                SizedBox(width: 15,),
                Text('Messagee'),
              ],
            ),
            Expanded(
               child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MenuListItem(),
                  MenuListItem(),
                  MenuListItem(),
                  MenuListItem(),
                  MenuListItem(),
                  MenuListItem(),
                  MenuListItem(),
                ],
               )
            ),
          ],
        )
      ),
    );
  }
}
