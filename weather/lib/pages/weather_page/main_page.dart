import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_demo/entities/weather/weather.dart';
import 'package:hackathon_demo/entities/weather/weather_cubit.dart';
import 'package:hackathon_demo/entities/weather/weather_repository.dart';

class MainPage extends StatelessWidget {
  static const path = '/main-page';
  static const name = 'MainPage';

  const MainPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (final context) => WeatherCubit(
        repository: context.read<WeatherRepository>(),
      )..loadWeather(),
      child: const Weather(),
    );
  }
}
