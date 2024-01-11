import 'package:flutter/material.dart';

import 'package:hackathon_demo/entities/some/some_cubit.dart';
import 'package:hackathon_demo/shared/cubit_builder/cubit_builder.dart';
import 'package:hackathon_demo/widgets/some_widget.dart';

class Some extends StatelessWidget {
  const Some({super.key});

  @override
  Widget build(final BuildContext context) {
    return CubitBuilder<SomeCubit, SomeState, DataSomeState>(
      onLoading: (final context) => const SizedBox(
        height: 250,
        child: Text('Загружается...'),
      ),
      onError: (final context, final e) => const Center(
        child: Text('Не получилось загрузить данные'),
      ),
      onData: (final context, final state) => SomeWidget(some: state.some),
    );
  }
}
