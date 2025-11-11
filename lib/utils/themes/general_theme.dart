import 'package:flutter/material.dart';
import 'schema_color.dart';
import 'typographic.dart';
import 'app_bar_theme.dart';
import 'button_theme.dart';
import 'form_theme.dart';

class GeneralTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: SchemaColor.primaryColor,
      secondary: SchemaColor.secondaryColor,
      surface: SchemaColor.backgroundColor,
      error: SchemaColor.errorColor,
      onPrimary: SchemaColor.lightTextColor,
      onSecondary: Colors.white,
    ),
    textTheme: Typographic.textTheme,
    appBarTheme: AppBarThemeApp.appBarTheme,
    elevatedButtonTheme: ButtonThemeApp.primaryButtonStyle,
    outlinedButtonTheme: ButtonThemeApp.secondaryButtonStyle,
    inputDecorationTheme: FormThemeApp.textFieldTheme,
    scaffoldBackgroundColor: SchemaColor.backgroundColor,
  );
}
