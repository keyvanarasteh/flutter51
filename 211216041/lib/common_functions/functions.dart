import 'package:dio/dio.dart';
import 'package:beautiful_soup_dart/beautiful_soup.dart';

import '../city_temp_data.dart';

String? getImageAccordingToStatus(String status) {
  switch (status) {
    case "Rainy":
      return "assets/rainy.webp";
    case "Snowy":
      return "assets/snowy.webp";
    case "Sunny":
      return "assets/sunny.webp";
    case "Partly Sunny":
      return "assets/partlysunny.webp";
    case "Thunderstorm":
      return "assets/thunderstorm.png";
    default:
      return null;
  }
}

Future<List<CityTempData>?> getCityTempDatas() async {
  final cities = [
    "Istanbul",
    "Ankara",
    "Izmir",
    "Bursa",
    "Adana",
    "Gaziantep",
    "Konya",
    "Antalya",
    "Diyarbakir",
    "Kayseri",
  ];
  int i = 0;

  final response =
      await Dio().get('https://www.metoffice.gov.uk/weather/world/turkey');

  if (response.statusCode == 200) {
    final degrees =
        BeautifulSoup(response.data).findAll('span', class_: 'temp');

    List<CityTempData> cityTemps =
        degrees.map((e) => CityTempData(cities[i++], e.string)).toList();

    for (int i = 0; i < cityTemps.length; i++) {
      cityTemps[i].temperature = cityTemps[i]
          .temperature
          .substring(0, cityTemps[i].temperature.length - 1);
    }

    return cityTemps;
  }

  return null;
}
