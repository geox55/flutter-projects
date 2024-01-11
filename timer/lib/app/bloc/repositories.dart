import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';
import 'package:flutter_hackathon/shared/api/some_api.dart';

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
];
