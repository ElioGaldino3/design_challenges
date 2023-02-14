import 'package:flutter/material.dart';

class AppColour {
  final Color backgroundColor;
  final Color backgroundAccentColor;

  AppColour({
    required this.backgroundColor,
    required this.backgroundAccentColor,
  });
}

final lightColours = AppColour(
  backgroundColor: const Color(0xFF7CD2D7),
  backgroundAccentColor: const Color(0xFFFFFFFF),
);
