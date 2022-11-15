import 'package:angle_on/constants/app_constants.dart';
import 'package:angle_on/screens/video_player.dart';
import 'package:flutter/material.dart';
import 'package:angle_on/class/movie_card.dart';
import 'movie_details.dart';

class DescriptionPage extends StatefulWidget {
  MovieCard item;
  DescriptionPage({Key? key,required this.item}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Container(
                  alignment: Alignment.topCenter,
                    height:height/2,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                      image: DecorationImage(image: AssetImage(widget.item.movieImage,),fit: BoxFit.cover
                      )
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(50, 87, 71, 66),
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.black38,width: 0.5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5,
                                      spreadRadius: 0.5,
                                      offset: Offset(0, 3)
                                  )
                                ]
                            ),
                            child: IconButton(
                                iconSize: 20,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: (){},
                                icon: Icon(Icons.cast_connected,color: Colors.white,)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(50, 87, 71, 66),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Colors.black38,width: 0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 5,
                                        spreadRadius: 0.5,
                                        offset: Offset(0, 3)
                                    )
                                  ]
                              ),
                              child: IconButton(
                                  iconSize: 20,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  icon: Icon(Icons.close,color: Colors.white,)
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(widget.item.title!,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height/2,
                child: SizedBox(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 35,
                        width: 250,
                        decoration: BoxDecoration(
                          color: AppConstants.primaryAngleOnColor,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: AppConstants.secondAngleOnColor,
                              blurRadius: 20,
                              spreadRadius: -15,
                                offset: Offset(
                                  0.0,
                                  8.0,
                                ),
                            )
                          ]
                        ),
                        child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.chair,color: AppConstants.secondAngleOnColor,shadows: [
                                Shadow(color: AppConstants.secondAngleOnColor,blurRadius: 30,)
                              ]),
                              SizedBox(width: 14),
                              Text(
                                "Watch",
                                style: TextStyle(
                                    color: AppConstants.secondAngleOnColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayer(),));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(200, 21, 25, 31),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Text(
                            "Trailer",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: height/500,
                  child: MovieDetail(
                      item: widget.item
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}
