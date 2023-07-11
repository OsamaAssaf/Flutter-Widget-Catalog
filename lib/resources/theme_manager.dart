// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'colors_manager.dart';

class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorsManager.primary,
        secondary: ColorsManager.secondary,
        background: ColorsManager.neutralWhite,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: ColorsManager.neutralWhite,
          fontSize: 20.0,
          letterSpacing: 2.0,
        ),
        displayMedium: TextStyle(
          fontSize: 18.0,
          color: ColorsManager.primary,
        ),
        displaySmall: TextStyle(
          fontSize: 16.0,
          color: ColorsManager.primary,
        ),
        headlineMedium: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        headlineSmall: TextStyle(
          fontSize: 18.0,
          fontStyle: FontStyle.italic,
        ),
        // titleLarge: TextStyle(
        //   fontSize: 24.0,
        //   fontStyle: FontStyle.italic,
        //   decoration: TextDecoration.underline,
        //   color: ColorsManager.primary,
        // ),
        bodySmall: TextStyle(
          fontSize: 18.0,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          color: ColorsManager.primary,
        ),
      ),
    );
  }
}
