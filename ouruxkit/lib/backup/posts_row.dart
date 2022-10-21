import 'package:flutter/material.dart';

class PostsRow extends StatelessWidget {
  PostsRow({
    Key? key,
    this.url1 = '',
  }) : super(key: key);

  late String url1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.network(height: 150, fit: BoxFit.cover, url1),
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
    );
  }
}
