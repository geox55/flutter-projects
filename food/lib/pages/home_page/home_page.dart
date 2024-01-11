import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/entities/home/home.dart';
import 'package:flutter_hackathon/entities/home/home_cubit.dart';
import 'package:flutter_hackathon/entities/home/home_repository.dart';

class HomePage extends StatelessWidget {
  static const path = '/home-page';
  static const name = 'HomePage';

  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (final context) => HomeCubit(
        repository: context.read<HomeRepository>(),
      )..loadHome(),
      child: const Home(),
    );
  }
}
