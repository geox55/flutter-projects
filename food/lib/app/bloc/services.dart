import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hackathon/entities/some/some_cubit.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';

import '../../entities/home/home_cubit.dart';
import '../../entities/home/home_repository.dart';

final List<BlocProvider> commonServices = [
  // Example:
  BlocProvider(
    create: (final context) {
      final someRepository = RepositoryProvider.of<SomeRepository>(context);
      return SomeCubit(repository: someRepository);
    },
  ),

  BlocProvider(
    create: (final context) {
      final homeRepository = RepositoryProvider.of<HomeRepository>(context);
      return HomeCubit(repository: homeRepository);
    },
  ),
];
