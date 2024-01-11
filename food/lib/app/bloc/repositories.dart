import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';
import 'package:flutter_hackathon/shared/api/some_api.dart';

import '../../entities/home/home_repository.dart';
import '../../shared/api/home_api.dart';

final List<RepositoryProvider> commonRepositories = [
  RepositoryProvider<SomeApi>(
    lazy: false,
    create: (final context) {
      return SomeApi();
    },
  ),
  RepositoryProvider<SomeRepository>(
    lazy: false,
    create: (final context) => SomeRepository(
      apiClient: context.read<SomeApi>(),
    ),
  ),

  RepositoryProvider<HomeApi>(
    lazy: false,
    create: (final context) {
      return HomeApi();
    },
  ),
  RepositoryProvider<HomeRepository>(
    lazy: false,
    create: (final context) => HomeRepository(
      apiClient: context.read<HomeApi>(),
    ),
  ),
];
