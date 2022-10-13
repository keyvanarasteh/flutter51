import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ana Sayfa"),
        ),
        body: Container(
          child: Column(
            children: [
              Image.network(
                'https://i.redd.it/3f461bppquy21.png',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, size: 32, color: Colors.grey),
                  Icon(Icons.stacked_bar_chart, size: 32, color: Colors.grey),
                  Icon(Icons.help, size: 32, color: Colors.grey),
                  Icon(Icons.wallet, size: 32, color: Colors.grey),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.read_more, size: 32, color: Colors.grey),
                  Icon(Icons.wallet_membership, size: 32, color: Colors.grey),
                  Icon(Icons.radar, size: 32, color: Colors.grey),
                  Icon(Icons.h_mobiledata, size: 32, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Text('Menu'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
        ),
      ),
    );
  }
}
