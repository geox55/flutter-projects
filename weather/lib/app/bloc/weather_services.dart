import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_demo/entities/weather/weather_cubit.dart';
import 'package:hackathon_demo/entities/weather/weather_repository.dart';

final List<BlocProvider> commonServices = [
  BlocProvider(
    create: (final context) {
      final weatherRepository =
          RepositoryProvider.of<WeatherRepository>(context);
      return WeatherCubit(repository: weatherRepository);
    },
  ),
];
