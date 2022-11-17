import 'dart:convert';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/19339947-Mobile-App-for-Movies
class Movie {
  final int id;
  final String title;
  final String description;
  final String image;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.image
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
    );
  }
}


void main() {
  runApp(const MyApp());
}

// This is the simple movies app that only has 3 screen (splash, home, detail) and
// lists the movies from local mock data. Then shows the detail of the movie (network.image, movie title, description etc.)
// Splash screen is just a simple image with a text on it (APP_TITLE and go to main page button).
// Home screen is a list of movies with listview (image, title, description etc.) when clicked goes to detail page.
// Detail screen is a simple page with a network image, title, description etc. (no listview, action icons on bottom etc.)

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lsmovies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // first page is splash screen
      home: const SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background is network image (https://cdn.pixabay.com/photo/2021/08/24/10/22/empty-seats-6570233_960_720.jpg)
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://cdn.pixabay.com/photo/2021/08/24/10/22/empty-seats-6570233_960_720.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://assets.stickpng.com/images/580b57fcd9996e24bc43c529.png',
                width: 250,
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'lsmovies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // go to home page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Text('Go to main page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  // mock movie (10 random movies)
  final List<Movie> movies = [
    Movie(
      id: 1,
      title: 'Harry Potter and the Sorcerer\'s Stone',
      description: 'Harry Potter has lived under the stairs at his aunt and uncle\'s house his whole life. But on his 11th birthday, he learns he\'s a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school\'s kindly headmaster, Harry uncovers the truth about his parents\' deaths -- and about the villain who\'s to blame.',
      image: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/eVPs2Y0LyvTLZn6AP5Z6O2rtiGB.jpg',
    ),
    Movie(
      id: 2,
      title: 'The Godfather',
      description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
      image: 'https://image.tmdb.org/t/p/w500/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg',
    ),
    Movie(
      id: 3,
      title: 'Breaking Bad',
      description: 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.',
      image: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ggFHVNu6YYI5L9pCfOacjizRGt.jpg',
    ),
    Movie(
      id: 4,
      title: 'The Dark Knight',
      description: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.',
      image: 'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
    ),
    Movie(
      id: 5,
      title: 'Lord of the Rings: The Return of the King',
      description: 'Gandalf and Aragorn lead the World.',
      image: 'https://image.tmdb.org/t/p/w500/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg',
    ),
    Movie(
      id: 6,
      title: 'Lord of the Rings: The Fellowship of the Ring',
      description: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
      image: 'https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg',
    ),
    Movie(
      id: 7,
      title: 'Lord of the Rings: The Two Towers',
      description: 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.',
      image: 'https://image.tmdb.org/t/p/w500/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg',
    ),
    Movie(
      id: 8,
      title: 'Pulp Fiction',
      description: 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
      image: 'https://image.tmdb.org/t/p/w500/dRZpdpKLgN9nk57zggJCs1TjJb4.jpg',
    ),
    Movie(
      id: 9,
      title: 'Schindler\'s List',
      description: 'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their',
      image: 'https://image.tmdb.org/t/p/w500/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg',
    ),
    Movie(
      id: 10,
      title: 'The Matrix',
      description: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
      image: 'https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg',
    ),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lsMovies'),
      ),
      // body is list of full width movie cards. in bottom title and description, image
      // bottom of the card is a button to go to detail page.
      body: ListView.builder(
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    widget.movies[index].image,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.movies[index].title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.movies[index].description,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DetailPage(movie: widget.movies[index])),
                                );
                              },
                              child: const Text('Film Detayına Git'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Movie movie;

  const DetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Detayı: ${movie.title}"),
      ),
      body: Column(
        children: [
          Image.network(
            movie.image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  movie.description,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                // social action button bar (like, bookmark, share, return)
                ButtonBar(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Geri Dön'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}