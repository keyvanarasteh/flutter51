import 'package:flutter/material.dart';
import 'package:uni_task/common_functions/functions.dart';
import 'package:uni_task/constants.dart' as AppConstants;
import 'package:uni_task/popular_locations_information_class.dart';
import 'package:uni_task/widgets/additional_air_data_widget.dart';
import 'package:uni_task/widgets/air_data_hour_widget.dart';

import '../widgets/day_widget.dart';

class PopularLocationScreen extends StatefulWidget {
  PopularLocationScreen({super.key, required this.information});
  PopularLocationInformation information;

  @override
  State<PopularLocationScreen> createState() => _PopularLocationScreenState();
}

class _PopularLocationScreenState extends State<PopularLocationScreen> {
  final List days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List _dayDatas = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.mainColor,
      appBar: AppBar(
        backgroundColor: AppConstants.mainColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          splashRadius: 0.1,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: const Icon(
                Icons.bookmark_add_outlined,
                size: 30,
              ),
              onPressed: () {
                print("Bookmark add");
              },
              splashRadius: 0.1,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30, bottom: 45),
                  child: Text(
                    '${widget.information.country}, ${widget.information.city}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
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
              ],
            ),
          ),
          Expanded(
            flex: 35,
            child: Column(
              children: [
                Expanded(
                  flex: 75,
                  child: AspectRatio(
                    aspectRatio: 9 / 10,
                    child: Image.asset(
                      getImageAccordingToStatus(widget.information.status) ??
                          "nahit.png",
                    ),
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: FittedBox(
                    child: Text(
                      '${widget.information.degree}°',
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
              flex: 25,
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: AdditionalAirData(),
              )),
          Expanded(
            flex: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30, left: 10),
                  child: AirDataHour(
                    hour: '12:00',
                    degree: '13',
                    icon: const Icon(Icons.cloud, color: Colors.white),
                  ),
                );
              },
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ],
      ),
    );
  }
}
