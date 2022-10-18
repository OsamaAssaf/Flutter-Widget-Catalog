import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xFFE76F51);
  static const Color secondaryColor = Color(0xFF2A9D8F);
  static const Color bgColor = Color(0xFFE9C46A);

  static const Color textPrimaryColor = Color(0xFF2A9D8F);

  static const TextStyle headline1 = TextStyle(
    color: textPrimaryColor,
    fontSize: 24.0,
    letterSpacing: 2.0,
  );
  static const TextStyle headline2 = TextStyle(
    fontSize: 20.0,
  );
  static const TextStyle headline3 = TextStyle(
    fontSize: 18.0,
  );
  static const TextStyle headline4 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.0,
  );
  static const TextStyle headline5 = TextStyle(
    fontSize: 24.0,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle headline6 = TextStyle(
    fontSize: 24.0,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
    color: primaryColor,
  );
}
