import 'package:flutter/material.dart';

class AdditionalAirData extends StatefulWidget {
  const AdditionalAirData({super.key});

  @override
  State<AdditionalAirData> createState() => _AdditionalAirDataState();
}

class _AdditionalAirDataState extends State<AdditionalAirData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(155, 27, 29, 45),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.speed, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "423 hpa",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Pressure",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.wind_power, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "8 mph",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Wind",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.visibility_outlined,
                            color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "4km",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Visibility",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.circle_outlined, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "71 %",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Humidity",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.air_sharp, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "8 mph",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Air quality",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Icon(Icons.sunny, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "UV",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
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
