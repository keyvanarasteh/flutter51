import 'package:angle_on/class/movie_card.dart';
import 'package:angle_on/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'movie_description_page.dart';

class MovieCardDesign extends StatefulWidget {
  MovieCard? item;
  MovieCardDesign({Key? key, required this.item}) : super(key: key);

  @override
  State<MovieCardDesign> createState() => _MovieCardDesignState();
}

class _MovieCardDesignState extends State<MovieCardDesign> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       setState(() {
         Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionPage(item: widget.item!),));
       });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(image: AssetImage(widget.item!.movieImage),fit:BoxFit.cover),
        ),
      ),
    );
  }
}
