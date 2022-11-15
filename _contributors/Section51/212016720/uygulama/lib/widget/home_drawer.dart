import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uygulama/pages/home_view.dart';
import 'package:uygulama/pages/producks.dart';

class home_drawer extends StatelessWidget {
  const home_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
            accountName: Text(
              "User Username",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              "username@gmail.com ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            currentAccountPicture: Image.asset(
              'images/user1.png',
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 240, 127, 164),
                  ),
                  title: Text("HOME",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900)),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => home_view()));
                  },
                ),
                ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 240, 127, 164),
                    ),
                    title: Text(
                      "SEARCH",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => producks()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Color.fromARGB(255, 240, 127, 164),
                    ),
                    title: Text("SHOPPİNG",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => home_view()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Color.fromARGB(255, 240, 127, 164),
                    ),
                    title: Text("LİKE",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => home_view()));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
