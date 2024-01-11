import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hackathon_demo/shared/api/weather_api.dart';
import 'package:hackathon_demo/widgets/description_card.dart';
import 'package:hackathon_demo/widgets/next_day_card.dart';

class WeatherWidget extends StatefulWidget {
  final WeatherData weather;

  const WeatherWidget({
    required this.weather,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => WeatherWidgetState();
}

class WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(final BuildContext context) {
    final weatherData = widget.weather;
    return Scaffold(
      appBar: AppBar(
        title: Text(weatherData.location),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Image.network(
                'https://news.airbnb.com/wp-content/uploads/sites/4/2023/09/01-Shrek-Airbnb-Exterior-Credit-Alix-McIntosh-1.jpg?fit=2500%2C1667'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weatherData.description),
                Text(
                  '${weatherData.temperatureC}°C',
                  style: const TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DescriptionCard(
                title: 'Humidity',
                description: weatherData.humidutyPercent.toString(),
                unit: '%',
              ),
              DescriptionCard(
                title: 'Persipication',
                description: weatherData.percipationPercent.toString(),
                unit: '%',
              ),
              DescriptionCard(
                title: 'Wind',
                description: weatherData.windKmPH.toString(),
                unit: 'km/h',
              ),
            ],
          ),
          Center(
            child: weatherData.nextDayWeatherDataList.isNotEmpty
                ? SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: weatherData.nextDayWeatherDataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: NextDayCard(
                            nextDayTitle:
                                weatherData.nextDayWeatherDataList[index].title,
                            temperatureC:
                                '${weatherData.nextDayWeatherDataList[index].temperatureC}°C',
                          ),
                        );
                      },
                    ),
                  )
                : const Center(
                    child: Text('No Data'),
                  ),
          ),
        ],
      ),
    );
  }
}
