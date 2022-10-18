import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Stories Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                    StoryWidget(),
                  ],
                ),
              ),
              // Posts Section
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
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
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Al_Pacino.jpg/220px-Al_Pacino.jpg'),
          ),
          SizedBox(height: 5),
          Text('Al Pacino'),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Al_Pacino.jpg/220px-Al_Pacino.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [Text('Brad Pitt'), Text('London')],
                  ),
                ],
              ),
              Icon(Icons.more_horiz, size: 32),
            ],
          ),
        ),
        Image.network(
          'https://c1.wallpaperflare.com/preview/796/685/144/guitar-keys-light-colors.jpg',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.heart_broken,
                    color: Color.fromARGB(255, 62, 59, 59),
                    size: 32,
                  ),
                  Icon(
                    Icons.comment,
                    color: Color.fromARGB(255, 62, 59, 59),
                    size: 32,
                  ),
                  Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 62, 59, 59),
                    size: 32,
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                color: Color.fromARGB(255, 62, 59, 59),
                size: 32,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('26 Likes'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Tommy Shelby #xyz'),
            ],
          ),
        ),
      ],
    );
  }
}
