import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hackathon_demo/entities/some/some_repository.dart';
import 'package:hackathon_demo/shared/typings/base_cubit_state.dart';

// States

class SomeState extends BaseCubitState {
  const SomeState() : super();
}

class InitSomeState extends SomeState implements InitCubitState {
  const InitSomeState() : super();
}

class LoadingSomeState extends SomeState implements LoadingCubitState {
  const LoadingSomeState() : super();
}

class DataSomeState extends SomeState implements DataCubitState {
  final String some;

  const DataSomeState({required this.some}) : super();
}

class ErrorSomeState extends SomeState implements ErrorCubitState {
  final Object e;

  const ErrorSomeState(this.e) : super();

  @override
  Object get error => e;
}

// Cubit

class SomeCubit extends Cubit<SomeState> {
  final SomeRepository repository;

  SomeCubit({
    required this.repository,
  }) : super(const InitSomeState());

  void loadSome() async {
    emit(const LoadingSomeState());

    try {
      final some = await repository.getSome();

      emit(DataSomeState(some: some));
    } catch (e) {
      emit(ErrorSomeState(e));
    }
  }
}
