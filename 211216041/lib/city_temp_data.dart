class CityTempData {
  CityTempData(this._city, this._temperature);

  String _city;

  String get city => _city;

  set city(String city) {
    _city = city;
  }

  String _temperature;

  String get temperature => _temperature;

  set temperature(String temperature) {
    _temperature = temperature;
  }
}
