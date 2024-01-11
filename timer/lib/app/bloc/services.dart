import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hackathon/entities/some/some_cubit.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';

final List<BlocProvider> commonServices = [
  // Example:
  BlocProvider(
    create: (final context) {
      final someRepository = RepositoryProvider.of<SomeRepository>(context);
      return SomeCubit(repository: someRepository);
    },
  ),
];
