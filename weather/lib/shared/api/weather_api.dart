class NextDayWeatherData {
  final String title;
  final int temperatureC;

  const NextDayWeatherData(this.title, this.temperatureC);
}

class WeatherData {
  final String location;
  final String description;
  final int temperatureC;
  final int humidutyPercent;
  final int percipationPercent;
  final int windKmPH;

  final List<NextDayWeatherData> nextDayWeatherDataList;

  const WeatherData(
    this.location,
    this.description,
    this.temperatureC,
    this.humidutyPercent,
    this.percipationPercent,
    this.windKmPH,
    this.nextDayWeatherDataList,
  );
}

class WeatherApi {
  Future<WeatherData> getWeather() async {
    const nextDays = [
      NextDayWeatherData('Tomorrow', 24),
      NextDayWeatherData('Fri', 28),
      NextDayWeatherData('Sat', 27),
      NextDayWeatherData('Sun', 22),
      NextDayWeatherData('Mon', 21),
    ];
    const response = WeatherData(
      'Saint-Petersburg',
      'Partly Cloudly',
      23,
      54,
      30,
      4,
      nextDays,
    );

    return response;
  }
}
