import 'package:flutter/material.dart';
import 'schema_color.dart';

class FormThemeApp {
  static final textFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      color: SchemaColor.darkTextColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black26, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: SchemaColor.primaryColor, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: SchemaColor.errorColor, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: SchemaColor.errorColor, width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  );
}
