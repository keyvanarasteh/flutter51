import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(255, 231, 231, 231),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(90, 0, 0, 0),
                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 44, 45, 46),
                        width: 10,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://m.media-amazon.com/images/M/MV5BOTBhMTI1NDQtYmU4Mi00MjYyLTk5MjEtZjllMDkxOWY3ZGRhXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://m.media-amazon.com/images/M/MV5BOTBhMTI1NDQtYmU4Mi00MjYyLTk5MjEtZjllMDkxOWY3ZGRhXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => {},
                child: Row(
                  children: [
                    Icon(
                      Icons.people,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Follow'),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Row(
                  children: [
                    Icon(
                      Icons.directions,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Message'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.network(
                        height: 150,
                        fit: BoxFit.cover,
                        'https://pbs.twimg.com/profile_images/1243880756935622656/6Rf-fMHe_400x400.jpg'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.network(
                        fit: BoxFit.cover,
                        height: 150,
                        'https://upload.wikimedia.org/wikipedia/commons/e/e7/Reuni%C3%B3n_con_Leonardo_DiCaprio_y_Carlos_Slim_%2834377676623%29.jpg'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.network(
                        height: 150,
                        fit: BoxFit.cover,
                        'https://upload.wikimedia.org/wikipedia/commons/6/67/Reuni%C3%B3n_con_Leonardo_DiCaprio_y_Carlos_Slim_%2834377670773%29.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
