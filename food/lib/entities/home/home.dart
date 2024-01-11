import 'package:flutter/material.dart';

import 'package:flutter_hackathon/entities/home/home_cubit.dart';
import 'package:flutter_hackathon/shared/cubit_builder/cubit_builder.dart';
import 'package:flutter_hackathon/widgets/home_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(final BuildContext context) {
    return CubitBuilder<HomeCubit, HomeState, DataHomeState>(
      onLoading: (final context) => const SizedBox(
        height: 250,
        child: Text('Загружается...'),
      ),
      onError: (final context, final e) => const Center(
        child: Text('Не получилось загрузить данные'),
      ),
      onData: (final context, final state) => HomeWidget(),
    );
  }
}
