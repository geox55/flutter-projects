import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/entities/home/home_repository.dart';
import 'package:flutter_hackathon/shared/typings/base_cubit_state.dart';

// States

class HomeState extends BaseCubitState {
  const HomeState() : super();
}

class InitHomeState extends HomeState implements InitCubitState {
  const InitHomeState() : super();
}

class LoadingHomeState extends HomeState implements LoadingCubitState {
  const LoadingHomeState() : super();
}

class DataHomeState extends HomeState implements DataCubitState {
  final String home;

  const DataHomeState({required this.home}) : super();
}

class ErrorHomeState extends HomeState implements ErrorCubitState {
  final Object e;

  const ErrorHomeState(this.e) : super();

  @override
  Object get error => e;
}

// Cubit

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repository;

  HomeCubit({
    required this.repository,
  }) : super(const InitHomeState());

  void loadHome() async {
    emit(const LoadingHomeState());

    try {
      final home = await repository.getHome();

      emit(DataHomeState(home: home));
    } catch (e) {
      emit(ErrorHomeState(e));
    }
  }
}
