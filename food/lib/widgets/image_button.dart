import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imageUrl;

  ImageButton({super.key, required this.imageUrl});

  @override
  Widget build(final BuildContext context) {
    return Image.asset(
      imageUrl,
      fit: BoxFit.contain,
    );
  }
}