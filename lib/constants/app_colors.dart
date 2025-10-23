import 'package:flutter/material.dart';

class AppColors {
  // Base Colors
  static const Color primary = Colors.orange;
  static const Color secondary = Colors.lightBlue;

  // Optional supporting colors
  static const Color background = Colors.white;
  static const Color textPrimary = Colors.blueGrey;
  static const Color textOnPrimary = Colors.white;

  // Gradient
  static const LinearGradient mainGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
