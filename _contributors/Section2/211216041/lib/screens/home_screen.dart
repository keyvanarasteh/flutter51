import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uni_task/city_temp_data.dart';
import 'package:uni_task/common_functions/functions.dart';
import 'package:uni_task/constants.dart' as AppConstants;
import 'package:uni_task/popular_locations_information_class.dart';
import 'package:uni_task/widgets/air_condition_widget.dart';
import 'package:uni_task/widgets/day_widget.dart';
import 'package:uni_task/widgets/popular_locations_widget.dart';
import 'package:dio/dio.dart';
import 'package:beautiful_soup_dart/beautiful_soup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController citySearchController = TextEditingController();

  List<CityTempData>? cityTempDatas;
  late final List<PopularLocationInformation> popularLocationInformations;
  late final List<String> weatherStatuses;
  final List days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List _dayDatas = [false, false, false, false, false, false, false];

  Future<void> setCityTempDatas() async {
    cityTempDatas = await getCityTempDatas();
  }

  @override
  void initState() {
    cityTempDatas = [];
    setCityTempDatas().whenComplete(() {
      setState(() {
        for (int i = 0; i < popularLocationInformations.length; i++) {
          popularLocationInformations[i].city = cityTempDatas![i].city;
          popularLocationInformations[i].degree = cityTempDatas![i].temperature;

          int intDegree = int.parse(popularLocationInformations[i].degree);

          if (intDegree >= 25) {
            popularLocationInformations[i].status = "Sunny";
          } else if (intDegree >= 20) {
            popularLocationInformations[i].status = "Partly Sunny";
          } else if (intDegree > 10 && intDegree < 20) {
            popularLocationInformations[i].status = "Rainy";
          } else if (intDegree > 3 && intDegree <= 10) {
            popularLocationInformations[i].status = "Thunderstorm";
          } else if (intDegree <= 3) {
            popularLocationInformations[i].status = "Snowy";
          }
        }
      });
    });

    popularLocationInformations = <PopularLocationInformation>[];
    weatherStatuses = [
      "Rainy",
      "Sunny",
      "Partly Sunny",
      "Snowy",
      "Thunderstorm",
    ];

    for (int i = 0; i < 10; i++) {
      final String randomStatus =
          weatherStatuses[Random().nextInt(weatherStatuses.length)];

      popularLocationInformations.add(
        PopularLocationInformation(
          degree: "18",
          status: randomStatus,
          country: "Turkey",
          city: "Istanbul",
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.mainColor,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/nahit.png"),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      backgroundColor: AppConstants.mainColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 35, bottom: 30),
              child: Text(
                "Hi Nahit !",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: TextField(
                controller: citySearchController,
                cursorColor: const Color.fromARGB(255, 115, 116, 125),
                style: const TextStyle(
                  color: Color.fromARGB(255, 115, 116, 125),
                ),
                decoration: const InputDecoration(
                  hintText: 'Search City',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 115, 116, 125),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 115, 116, 125),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 115, 116, 125),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 115, 116, 125),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 25, bottom: 10),
              child: CityWeatherCard(),
            ),
            Expanded(
              flex: 15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashFactory: NoSplash.splashFactory,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < _dayDatas.length; i++) {
                          _dayDatas[i] = false;
                        }
                        _dayDatas[index] = true;
                      });
                    },
                    child: Day(
                      day: days[index],
                      clicked: _dayDatas[index],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 85,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Row(
                      children: const [
                        Text(
                          "Popular Locations",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: Color.fromARGB(255, 144, 145, 150),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 9 / 23,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 15),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return PopularLocationCard(
                          information: popularLocationInformations[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
