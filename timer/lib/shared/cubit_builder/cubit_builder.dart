import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/shared/typings/base_cubit_state.dart';

class CubitBuilder<
    Cubit extends StateStreamable<State>,
    State extends BaseCubitState,
    DataState extends State> extends StatelessWidget {
  final Widget Function(BuildContext)? onInit;
  final Widget Function(BuildContext) onLoading;
  final Widget Function(BuildContext, DataState) onData;
  final Widget Function(BuildContext)? onNoData;
  final Widget Function(BuildContext, Object)? onError;

  const CubitBuilder({
    required this.onLoading,
    required this.onData,
    this.onNoData,
    super.key,
    this.onInit,
    this.onError,
  });

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<Cubit, State>(
      builder: (final context, final state) {
        if (state is LoadingCubitState) {
          return onLoading(context);
        }
        if (state is DataCubitState) {
          return onData(context, state as DataState);
        }
        if (state is NoDataCubitState && onNoData != null) {
          return onNoData!(context);
        }
        if (state is ErrorCubitState && onError != null) {
          return onError!(context, state.error);
        }

        return const SizedBox();
      },
    );
  }
}
