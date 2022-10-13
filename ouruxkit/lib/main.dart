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
              Icon(Icons.qr_code),
              Icon(Icons.r_mobiledata),
              Icon(Icons.e_mobiledata_rounded),
              Icon(Icons.wallet),
              Icon(Icons.javascript),
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
