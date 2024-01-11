import 'package:hackathon_demo/entities/weather/weather.dart';
import 'package:hackathon_demo/shared/api/weather_api.dart';

class WeatherRepository {
  final WeatherApi apiClient;

  WeatherRepository({required this.apiClient});

  Future<WeatherData> getWeather() async {
    final response = await apiClient.getWeather();

    if (response != null) {
      return response;
    }

    throw Exception();
  }
}
