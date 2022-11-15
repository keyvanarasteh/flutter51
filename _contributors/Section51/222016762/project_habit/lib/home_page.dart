import 'package:flutter/material.dart';
import 'package:project_habit/home_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Rabia'),
      //   backgroundColor: Colors.red,
      //   // leading: Icon(Icons.home_max_outlined),
      //   actions: [],

      // ),

      //drawer: Drawer(backgroundColor: Colors.amber),
      
      //floatingActionButton: FloatingActionButton(onPressed: () {} , child: Icon(Icons.system_update_alt_outlined)),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text('Choose habit', style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Choose your daily habits, you can choose more than one.', style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Row(
                children: const [
                  Expanded(
                    child: HomeIcon(title: 'Work Out', icon: Icon(Icons.accessibility_new,),),
                  ),
                  Expanded(
                    child: HomeIcon(title: 'Eat Food', icon: Icon(Icons.food_bank_rounded)),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(child: HomeIcon(title: 'Music', icon: Icon(Icons.music_note_rounded))),
                  Expanded(child: HomeIcon(title: 'Art Design', icon: Icon(Icons.art_track)))
                ],
              ),
              Row(
                children: const [
                  Expanded(child: HomeIcon(title: 'Trevalling', icon: Icon(Icons.travel_explore))),
                  Expanded(child: HomeIcon(title: 'Read Book', icon: Icon(Icons.book)))
                ],
              ),
              Row(
                children: const [
                  Expanded(child: HomeIcon(title: 'Gaming', icon: Icon(Icons.gamepad_rounded))),
                  Expanded(child: HomeIcon(title: 'Mechanic', icon: Icon(Icons.medical_information)))
                ],
              ),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Twopage())));
                    }, child: Text('Get Started!'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    )),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeIcon extends StatelessWidget {
  final String title;
  final Icon icon;

  const HomeIcon({
    Key? key, required this.title, required this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 10,),
          Text(title),
        ],
      ),
                ),
                );
  }
}