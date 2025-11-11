import 'package:flutter/material.dart';
import 'schema_color.dart';

class ButtonThemeApp {
  static final primaryButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: SchemaColor.primaryColor,
      foregroundColor: SchemaColor.lightTextColor,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      elevation: 2,
    ),
  );

  static final secondaryButtonStyle = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: SchemaColor.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: const BorderSide(color: SchemaColor.primaryColor, width: 2),
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    ),
  );
}
