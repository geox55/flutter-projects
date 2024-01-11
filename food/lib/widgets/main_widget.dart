import 'package:flutter/material.dart';
import 'package:flutter_hackathon/widgets/background.dart';
import 'package:flutter_hackathon/widgets/body.dart';
import 'package:flutter_hackathon/widgets/image_button.dart';

class MainWidget extends StatefulWidget {
  final String main;

  const MainWidget({
    required this.main,
    super.key,
  });

  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  @override
  Widget build(final BuildContext context) {
    return
        const Stack (
          children: [
            Background(),
            Body(),
        ],
        );
  }

}
