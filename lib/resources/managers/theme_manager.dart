import '../../resources/all_imports.dart';

class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ColorsManager.neutralWhite,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorsManager.primary,
        secondary: ColorsManager.secondary,
        surface: ColorsManager.neutralWhite,
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
