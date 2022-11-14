// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/cupertino.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
double value = 12.00 ;

int _selectedIndex = 0;
bool switchValue1 = true;
String saat="12:00";
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: const Text("ALARM",style: TextStyle(color: Colors.black, fontFamily: 'Quicksand' ),)),
      ),
      bottomNavigationBar: BottomNavigationBar( 
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.access_alarm, color: Colors.black),
        label: 'Alarm', backgroundColor: Colors.blueGrey, 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.language, color: Colors.black),
        label: 'Dünya Saati ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.timer, color: Colors.black),
        label: 'Kronometre ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.query_builder, color: Colors.black),
        label: 'Zamanlayıcı',
      ),

    ],
  ),
      body:Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.blueGrey,Colors.grey], begin:Alignment.centerLeft,end:Alignment.bottomRight)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(top : 50),
                  child: SimpleCircularProgressBar(
                    fullProgressColor: Colors.blueGrey, 
                    size: 150,
                    mergeMode: true, 
                    animationDuration: 100, 
                    maxValue: 150,
                    ),
                  
                ),
                
                
              ],
            ),
             Container(
                      height: 330,
                      child: Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            alarm(saat:"13:00"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"17:00"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"00:00"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"09:00"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"06:00"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"06:10"),
                            Text("---------------------------------------------------------------------------------------------------------------------------------"),
                            alarm(saat:"06:20"),

                            ],
                            ),
                            ),
             ),
        ]
      ),
    )
   );
  }

  Padding alarm({required String saat,}) {
    
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
              children: [
                Column(
                  children: [
                    Text("$saat",style: const TextStyle( fontSize: 20, color: Colors.black)),
                    const Padding(
                      padding: EdgeInsets.only(left: 10,),
                      child: Text("Alarm,Yalnızca bir kez çalıcak",style: TextStyle( fontSize: 14, color: Colors.black)),
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(left: 200,),
                child: CupertinoSwitch(
                  value: switchValue1,
                  onChanged: (value) {
                  setState(() {
                    switchValue1 = value;
                  });
                },
            ),
              ), 
              ],
          ),
            ),),
        );
  }
}




