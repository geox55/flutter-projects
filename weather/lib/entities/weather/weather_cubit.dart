import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_demo/entities/weather/weather.dart';
import 'package:hackathon_demo/entities/weather/weather_repository.dart';
import 'package:hackathon_demo/shared/api/weather_api.dart';
import 'package:hackathon_demo/shared/typings/base_cubit_state.dart';

class WeatherState extends BaseCubitState {
  const WeatherState() : super();
}

class InitWeatherState extends WeatherState implements InitCubitState {
  const InitWeatherState() : super();
}

class LoadingWeatherState extends WeatherState implements LoadingCubitState {
  const LoadingWeatherState() : super();
}

class DataWeatherState extends WeatherState implements DataCubitState {
  final WeatherData weather;

  const DataWeatherState({required this.weather}) : super();
}

class ErrorWeatherState extends WeatherState implements ErrorCubitState {
  final Object e;

  const ErrorWeatherState(this.e) : super();

  @override
  Object get error => e;
}

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository repository;

  WeatherCubit({
    required this.repository,
  }) : super(const InitWeatherState());

  void loadWeather() async {
    emit(const LoadingWeatherState());

    try {
      final weather = await repository.getWeather();

      emit(DataWeatherState(weather: weather));
    } catch (e) {
      emit(ErrorWeatherState(e));
    }
  }
}
