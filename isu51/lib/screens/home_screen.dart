// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isu51/widgets/menu_element.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
          Icon(Icons.message),
          Text('Hello'),
        ],
        // leading: Icon(Icons.menu),
        title: Text('ISU 2nci ogretim'),
      ),
      body: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello World..',
              style: TextStyle(
                fontSize: 64,
                color: Colors.purple,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            ElevatedButton(onPressed: ()=>{}, child: Text('Hello')),
            ElevatedButton(onPressed: ()=>{}, child: Text('Hello World')),
            ElevatedButton(onPressed: ()=>{}, child: Text('Hello Dear Students')),

            SizedBox(height: 30,),



            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/coffee');
              } , child: Text('Coffee  Screen'),
            ),   
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tab');
              } , child: Text('Tab Screen'),
            ), 
            SizedBox(height: 30,),
            Text('Google  Fonts Testt...',
              style: GoogleFonts.trispace(
                fontSize: 38,
              ),
            ), 
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Avatar Image Header
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: CircleAvatar(radius: (76),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(74),
                    child: Image.asset("assets/images/avatar.jpg"),
                  )
              ),  
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  MenuElement(
                    title: "Home",
                    icon: Icon(Icons.home),
                  ),
                  MenuElement(
                    title: "Profile",
                    icon: Icon(Icons.person),
                  ),
                  MenuElement(
                    title: "Support",
                    icon: Icon(Icons.support),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
