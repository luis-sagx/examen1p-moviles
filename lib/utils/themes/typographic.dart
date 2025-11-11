import 'package:flutter/material.dart';
import 'schema_color.dart';

class Typographic {
  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: SchemaColor.darkTextColor,
      letterSpacing: 0.25,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: SchemaColor.darkTextColor,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: SchemaColor.darkTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: SchemaColor.darkTextColor,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: SchemaColor.darkTextColor,
      letterSpacing: 0.25,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: SchemaColor.darkTextColor,
      letterSpacing: 0.1,
    ),
  );
}
