import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('images/Midjourney.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('images/hurricane.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('images/familyguyava.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('images/Screenshot_1.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('images/Screenshot_2.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            backgroundImage: AssetImage('images/nvidia.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: ListView(
              children: [
                Post(
                    Avatar: 'hurricane.png',
                    isim: 'didinicu',
                    resim: 'Spoderman.png'),
                SizedBox(
                  height: 10,
                ),
                Post(
                    Avatar: 'familyguyava.png',
                    resim: 'familyguy.png',
                    isim: 'familyguy'),
                SizedBox(
                  height: 10,
                ),
                Post(
                    resim: 'İllustration.jpg',
                    Avatar: 'Midjourney.png',
                    isim: 'MidJourney'),
                SizedBox(
                  height: 10,
                ),
                Post(
                    resim: 'canbonomok.png',
                    Avatar: 'Screenshot_2.png',
                    isim: 'Canbonomo'),
                SizedBox(
                  height: 10,
                ),
                Post(
                    resim: 'cemyılmaz.png',
                    Avatar: 'Screenshot_1.png',
                    isim: 'cmylmz'),
                SizedBox(
                  height: 10,
                ),
                Post(resim: 'Rtx.png', Avatar: 'nvidia.png', isim: 'nvidia'),
              ],
            ),
          )
        ],
      ),

      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: [Icon(Icons.settings)],
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/Dwaynekral.png'),
        ),
      ),
      //
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        ],
      ),
    );
  }
}

//post
class Post extends StatelessWidget {
  final String resim;
  final String Avatar;
  final String isim;
  Post({required this.resim, required this.Avatar, required this.isim});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/$Avatar'),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('$isim'),
              ),
              SizedBox(
                width: 260,
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('images/$resim'),
          ),
        ),
        Container(
          child: Row(
            children: [
              Icon(Icons.favorite),
              SizedBox(width: 10),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Icon(Icons.send),
            ],
          ),
        )
      ],
    );
  }
}
