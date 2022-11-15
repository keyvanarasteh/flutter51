import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class CityWeatherCard extends StatefulWidget {
  const CityWeatherCard({super.key});

  @override
  State<CityWeatherCard> createState() => _CityWeatherCardState();
}

class _CityWeatherCardState extends State<CityWeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 27, 29, 45),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 70,
            child: Container(
              width: 60,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 15,
                    color: Color.fromARGB(120, 230, 186, 77),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 40,
            width: 120,
            child: SimpleShadow(
              color: Colors.yellow,
              opacity: 1,
              sigma: 3,
              child: Image.asset('assets/partlysunny.webp'),
            ),
          ),
          const Positioned(
            right: 35,
            top: 40,
            child: Text(
              '19ºc',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            right: 150,
            bottom: 27,
            child: Icon(Icons.location_on, color: Colors.white),
          ),
          const Positioned(
            right: 80,
            bottom: 30,
            child: Text(
              'Helsinki, ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const Positioned(
            right: 28,
            bottom: 30,
            child: Text(
              'Finland',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
