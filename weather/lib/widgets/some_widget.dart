import 'package:flutter/material.dart';
import 'package:hackathon_demo/app/themes/theme_typography.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hackathon 7bits'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text(widget.some)],
      ),
    );
  }
}
