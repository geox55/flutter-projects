import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/entities/some/some.dart';
import 'package:flutter_hackathon/entities/some/some_cubit.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';

class WelcomePage extends StatelessWidget {
  static const path = '/welcome-page';
  static const name = 'WelcomePage';

  const WelcomePage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<SomeCubit>(
      create: (final context) => SomeCubit(
        repository: context.read<SomeRepository>(),
      )..loadSome(),
      child: const Some(),
    );
  }
}
