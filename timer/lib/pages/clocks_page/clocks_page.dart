import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/entities/some/some_cubit.dart';
import 'package:flutter_hackathon/entities/some/some_repository.dart';

import 'package:flutter_hackathon/widgets/activity_widget.dart';

class ClocksPage extends StatelessWidget {
  static const path = '/clocks_page';
  static const name = 'Clocks page';

  const ClocksPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<SomeCubit>(
      create: (final context) => SomeCubit(
        repository: context.read<SomeRepository>(),
      )..loadSome(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Morning timer'),
          backgroundColor: Colors.amber[50],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: const [
              ActivityWidget(
                'Staring at the ceiling',
                Duration(minutes: 40),
                Duration(minutes: 0),
                Duration(minutes: 23),
              ),
              ActivityWidget(
                'Breakfast',
                Duration(minutes: 56),
                Duration(minutes: 4),
                Duration(minutes: 36),
              ),
              ActivityWidget(
                'Bathroom',
                Duration(minutes: 24),
                Duration(minutes: 5),
                Duration(minutes: 8),
              ),
              ActivityWidget(
                'Dressing',
                Duration(minutes: 26),
                Duration(minutes: 4),
                Duration(minutes: 10),
              ),
              ActivityWidget(
                'Packing',
                Duration(minutes: 12),
                Duration(minutes: 3),
                Duration(minutes: 23),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
