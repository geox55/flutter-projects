class BaseCubitState {
  const BaseCubitState();
}

class InitCubitState extends BaseCubitState {
  const InitCubitState();
}

class LoadingCubitState extends BaseCubitState {
  const LoadingCubitState();
}

class DataCubitState extends BaseCubitState {
  const DataCubitState();
}

class NoDataCubitState extends BaseCubitState {
  const NoDataCubitState();
}

class ErrorCubitState extends BaseCubitState {
  final Object error;

  const ErrorCubitState({required this.error});
}
