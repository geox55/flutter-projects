import 'package:flutter/material.dart';

class CustomPalette extends ThemeExtension<CustomPalette> {
  final Color exampleColor;

  const CustomPalette({
    required this.exampleColor,
  });

  @override
  CustomPalette copyWith({
    final Color? exampleColor,
  }) =>
      CustomPalette(
        exampleColor: exampleColor ?? this.exampleColor,
      );

  @override
  CustomPalette lerp(final CustomPalette? other, final double t) {
    if (other is! CustomPalette) {
      return this;
    }
    return CustomPalette(
      exampleColor: Color.lerp(exampleColor, other.exampleColor, t)!,
    );
  }

  @override
  String toString() => 'MyColors(exampleColor: $exampleColor)';
}
