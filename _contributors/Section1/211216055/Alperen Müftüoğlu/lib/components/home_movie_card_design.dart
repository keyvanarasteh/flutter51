import 'package:angle_on/class/home_movie_card.dart';
import 'package:flutter/material.dart';

class HomeMovieCardDesign extends StatefulWidget {
  HomeMovieCard? item;
  HomeMovieCardDesign({Key? key, required this.item}) : super(key: key);

  @override
  State<HomeMovieCardDesign> createState() => _HomeMovieCardDesignState();
}

class _HomeMovieCardDesignState extends State<HomeMovieCardDesign> {
  @override
  Widget build(BuildContext context) {
    return widget.item!.grey? ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.black, BlendMode.saturation),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(image: AssetImage(widget.item!.movieImage),fit:BoxFit.cover,),
        ),
      ),
    )
        : Container(
          padding: EdgeInsets.only(left: 16,bottom: 16),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(image: AssetImage(widget.item!.movieImage),fit:BoxFit.cover),
            ),
                child: Text(widget.item!.title,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,backgroundColor: Color.fromRGBO(10, 10, 10, 250)),maxLines: 2)
    );
  }
}