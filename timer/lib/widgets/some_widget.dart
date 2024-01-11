import 'package:flutter/material.dart';

class SomeWidget extends StatefulWidget {
  final String some;

  const SomeWidget({
    required this.some,
    super.key,
  });

  @override
  State<SomeWidget> createState() => SomeWidgetState();
}

class SomeWidgetState extends State<SomeWidget> {
  @override
  Widget build(final BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const Text('Привет, '), Text(widget.some)],
    );
  }
}
