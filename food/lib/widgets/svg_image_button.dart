import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageButton extends StatelessWidget {
  final String imageUrl;

  SvgImageButton({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: SvgPicture.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}