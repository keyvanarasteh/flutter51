import 'package:angle_on/class/movie_card.dart';
import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  MovieCard item;
  MovieDetail({Key? key,required this.item}) : super(key: key);

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(padding:EdgeInsets.symmetric(horizontal: 16),width:width,child: Text(widget.item.description,style: TextStyle(color: Colors.grey[500],height: 1.5),maxLines: 2,overflow: TextOverflow.ellipsis,)),
        Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16,bottom: 4),
          child: Row(
            children: [
              Text("Director",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(width: 25,height: 1.5,color: AppConstants.thirdAngleOnColor),
              ),
              Text(widget.item.director,style: TextStyle(color: Colors.grey[500],height: 1.5),maxLines: 1,overflow: TextOverflow.ellipsis,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
          child: Row(
            children: [
              Text("Starring",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),maxLines: 2,overflow: TextOverflow.ellipsis,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(width: 25,height: 1.5,color: AppConstants.thirdAngleOnColor),
              ),
              Container(width:300,child: Text(widget.item.starring.join(),style: TextStyle(color: Colors.grey[500],height: 1.5),maxLines: 2,overflow: TextOverflow.ellipsis,))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
          child: Row(
            children: [
              Text(widget.item.detail.elementAt(0),style:TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16) ,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(width: 15,height: 1.5,color: AppConstants.thirdAngleOnColor),
              ),
              Text(widget.item.detail.elementAt(1),style:TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(width: 15,height: 1.5,color: AppConstants.thirdAngleOnColor),
              ),
              Text(widget.item.detail.elementAt(2),style:TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(width: 15,height: 1.5,color: AppConstants.thirdAngleOnColor),
              ),
              Text(widget.item.detail.elementAt(3),style:TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppConstants.primaryAngleOnColor,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black38,width: 0.3),
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
                          iconSize: 25,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: (){},
                          icon: Icon(Icons.add,color: Colors.white,)
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("My picks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppConstants.primaryAngleOnColor,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black38,width: 0.3),
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
                          iconSize: 25,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: (){},
                          icon: Icon(Icons.cloud_download,color: Colors.white,)
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Download",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppConstants.primaryAngleOnColor,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black38,width: 0.3),
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
                          iconSize: 25,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: (){},
                          icon: Icon(Icons.near_me_sharp,color: Colors.white,)
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Share",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppConstants.primaryAngleOnColor,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black38,width: 0.3),
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
                          iconSize: 25,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: (){},
                          icon: Icon(Icons.auto_awesome,color: Colors.white,)
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Rate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
