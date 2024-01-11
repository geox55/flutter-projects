import 'package:flutter/material.dart';

import 'package:hackathon_demo/entities/weather/weather_cubit.dart';
import 'package:hackathon_demo/shared/cubit_builder/cubit_builder.dart';
import 'package:hackathon_demo/widgets/weather_widget.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(final BuildContext context) {
    return CubitBuilder<WeatherCubit, WeatherState, DataWeatherState>(
      onLoading: (final context) => const SizedBox(
        height: 250,
        child: Text('Загружается...'),
      ),
      onError: (final context, final e) => const Center(
        child: Text('Не получилось загрузить данные'),
      ),
      onData: (final context, final state) =>
          WeatherWidget(weather: state.weather),
    );
  }
}
