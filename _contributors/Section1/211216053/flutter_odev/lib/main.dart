import 'package:flutter/material.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//App bar renk
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xf07983db),
      )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//APP BAR
        appBar: AppBar(
          title: const Text('Movie Archive'),
          //Kenar yuvarlama
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
//App bar liste icon
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: SafeArea(
//Film afişleri ve yazılar
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Aradığınız Filmi yazınız',
                  ),
                ),
              ),
//Afiş
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(16.0),
                      color: Color(0xf07983db)),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Image(
                    image: NetworkImage(
                        'https://www.arttablo.com/upload/U-thor-3-film-afisi-sinema-kanvas-tablo1527774054-800.png'),
                  ),
                ),
              ),
//YAZI
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xf07983db),
                ),
                child: Center(
                  child: Text(
                    'Thor',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//Afiş
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(16.0),
                      color: Color(0xf07983db)),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Image(
                    image: NetworkImage(
                        'https://www.arttablo.com/upload/U-avengers-age-of-ultron-film-afisi-sinema-kanvas-tablo1502024875-800.jpg'),
                  ),
                ),
              ),
//YAZI
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xf07983db),
                ),
                child: Center(
                  child: Text(
                    'Avengers Age Of Ultron',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//Afiş
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(16.0),
                      color: Color(0xf07983db)),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Image(
                    image: NetworkImage(
                        'https://www.arttablo.com/upload/U-avengers-infinity-war-2018-film-poster-kanvas-tablo1522744739-800.jpg'),
                  ),
                ),
              ),
//YAZI
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xf07983db),
                ),
                child: Center(
                  child: Text(
                    'Avengers Infinity War',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//Afiş
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(16.0),
                      color: Color(0xf07983db)),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Image(
                    image: NetworkImage(
                        'https://postercim.net/wp-content/uploads/2019/10/joker-film-poster-2019.jpg.webp'),
                  ),
                ),
              ),
//YAZI
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xf07983db),
                ),
                child: Center(
                  child: Text(
                    'JOKER',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//Afiş
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(16.0),
                      color: Color(0xf07983db)),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Image(
                    image: NetworkImage(
                        'https://www.arthipo.com/image/cache/catalog/poster/movie/1-758/pfilm459-harry-potter-and-the-deathly-hallows-part-i_c3ca0810-movie-film-poster-1000x1000.jpg'),
                  ),
                ),
              ),
//YAZI
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xf07983db),
                ),
                child: Center(
                  child: Text(
                    'Harry Potter Ve Ölüm Yadigarları(Part 1)',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
