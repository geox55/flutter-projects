import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hackathon_demo/entities/weather/weather_repository.dart';
import 'package:hackathon_demo/shared/api/weather_api.dart';

final List<RepositoryProvider> commonRepositories = [
  RepositoryProvider<WeatherApi>(
    lazy: false,
    create: (final context) {
      return WeatherApi();
    },
  ),
  RepositoryProvider<WeatherRepository>(
    lazy: false,
    create: (final context) => WeatherRepository(
      apiClient: context.read<WeatherApi>(),
    ),
  ),
];
