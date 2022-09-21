import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Dark', isDefault: true)
ThemeData getDarkTheme() {
  final theme = ThemeData(
    colorSchemeSeed: Colors.deepPurple,
    brightness: Brightness.dark,
    useMaterial3: true,
  );
  return _modifyTheme(theme);
}

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData getLightTheme() {
  final theme = ThemeData(
    colorSchemeSeed: Colors.deepPurple,
    brightness: Brightness.light,
    useMaterial3: true,
  );
  return _modifyTheme(theme);
}

ThemeData _modifyTheme(ThemeData baseTheme) => baseTheme.copyWith(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
        fillColor: baseTheme.colorScheme.primaryContainer,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
