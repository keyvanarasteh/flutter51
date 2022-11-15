import 'dart:convert';

import 'package:angle_on/class/channel.dart';
import 'package:angle_on/class/home_movie_card.dart';
import 'package:angle_on/class/title.dart';
import 'package:angle_on/components/channel_card_design.dart';
import 'package:angle_on/components/home_movie_card_design.dart';
import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../class/bottom_movie_card.dart';
import '../components/bottom_card_design.dart';
import '../components/bottom_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<HomeMovieCard> cards = [
    HomeMovieCard(movieImage: "assets/interstellar2.png",grey: false,title: "Interstellar"),
    HomeMovieCard(movieImage: "assets/seven.png",grey: true,title: "Seven"),
    HomeMovieCard(movieImage: "assets/contact.png",grey: true,title: "Contact"),
    HomeMovieCard(movieImage: "assets/fight_club.png",grey: true,title: "Fight Club"),
    HomeMovieCard(movieImage: "assets/whiplash.png",grey: true,title: "Whiplash"),
    HomeMovieCard(movieImage: "assets/before_sunrise.png",grey: true,title: "Before Sunrise"),
    HomeMovieCard(movieImage: "assets/recepivedik1.png",grey: true,title: "Recep İvedik 1"),
    HomeMovieCard(movieImage: "assets/recepivedik2.png",grey: true,title: "Recep İvedik 2"),
    HomeMovieCard(movieImage: "assets/recepivedik3.png",grey: true,title: "Recep İvedik 3"),
    HomeMovieCard(movieImage: "assets/recepivedik4.png",grey: true,title: "Recep İvedik 4"),
    HomeMovieCard(movieImage: "assets/recepivedik5.png",grey: true,title: "Recep İvedik 5"),
    HomeMovieCard(movieImage: "assets/recepivedik6.png",grey: true,title: "Recep İvedik 6"),
    HomeMovieCard(movieImage: "assets/inception.png",grey: true,title: "Inception"),
  ];
  List<ChannelCard> channelCards = [
    ChannelCard(channelImage: "assets/BBC.png"),
    ChannelCard(channelImage: "assets/MoMA.png"),
    ChannelCard(channelImage: "assets/ruski.png"),
    ChannelCard(channelImage: "assets/disnep.png"),
    ChannelCard(channelImage: "assets/HBO.png"),
    ChannelCard(channelImage: "assets/trt.png"),
    ChannelCard(channelImage: "assets/tlc.png"),
    ChannelCard(channelImage: "assets/nationalG.png"),
  ];

  List<BottomCard> bottomCards = [
  BottomCard(bottomImage: "assets/interstellar2.png"),
  BottomCard(bottomImage: "assets/seven.png"),
  BottomCard(bottomImage: "assets/contact.png"),
  BottomCard(bottomImage: "assets/fight_club.png"),
  BottomCard(bottomImage: "assets/whiplash.png"),
  BottomCard(bottomImage: "assets/before_sunrise.png"),
  BottomCard(bottomImage: "assets/recepivedik1.png"),
  BottomCard(bottomImage: "assets/recepivedik2.png"),
  BottomCard(bottomImage: "assets/recepivedik3.png"),
  BottomCard(bottomImage: "assets/interstellar.png"),
  BottomCard(bottomImage: "assets/recepivedik4.png"),
  BottomCard(bottomImage: "assets/recepivedik5.png"),
  BottomCard(bottomImage: "assets/recepivedik6.png"),
  BottomCard(bottomImage: "assets/inception.png"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //AppBar
          AppBar(
            centerTitle: true,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
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
                      icon: Icon(Icons.cast_connected,color: Colors.white,)
                  ),
                ),
              ),
            ],
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Angle",
                  style: TextStyle(
                      color: AppConstants.secondAngleOnColor
                  ),
                ),
                SizedBox(width: 6),
                Text("O",
                  style: TextStyle(
                      color: AppConstants.secondAngleOnColor,
                    shadows: [
                      Shadow(color: AppConstants.secondAngleOnColor,blurRadius: 30,)
                    ]
                  ),
                ),
                Text(
                  "N",
                  style: TextStyle(
                      color: AppConstants.secondAngleOnColor
                  ),
                ),

              ],
            ),
          ),
          //Expanded(child: Image.asset("assets/alperen.jpeg",color: Colors.black,colorBlendMode: BlendMode.saturation,)),
          Expanded(
            flex: 40,
            child: CarouselSlider.builder(
                itemCount: cards.length, itemBuilder: (context, index, realIndex) {
                  return HomeMovieCardDesign(item: cards[index]);
            }, options: CarouselOptions(
              aspectRatio: 18/9,
              autoPlay: true,enlargeCenterPage: true,enlargeStrategy: CenterPageEnlargeStrategy.height,onPageChanged: (index, reason) {
              setState(() {
                for (int i = 0; i < cards.length; i++)
                {
                  cards[i].grey = true;
                }
                cards[index].grey = false;
              });
            },))
            ),
          Expanded(flex:15,
              child: ListView.builder(
                itemCount: channelCards.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return ChannelCardDesign(item: channelCards[index]);
          },)),
          Expanded(flex:45,child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                BottomTitles(item: BottomTitle(bottomTitle: "Continue Watching")),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 155,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: bottomCards.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BottomCardDesign(item: bottomCards[index]);
                    },),
                  ),
                ),
                BottomTitles(item: BottomTitle(bottomTitle: "Most Wanted")),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 155,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: bottomCards.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BottomCardDesign(item: bottomCards[index]);
                      },),
                  ),
                ),
                BottomTitles(item: BottomTitle(bottomTitle: "My List")),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 155,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: bottomCards.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BottomCardDesign(item: bottomCards[index]);
                      },),
                  ),
                ),
                BottomTitles(item: BottomTitle(bottomTitle: "Ertuğrul List")),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 155,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: bottomCards.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BottomCardDesign(item: bottomCards[index]);
                      },),
                  ),
                ),
              ],
            ),
          )
          ),
        ],
      ),
    );
  }
}
