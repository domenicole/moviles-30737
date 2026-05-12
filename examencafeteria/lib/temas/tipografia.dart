import 'package:flutter/material.dart';

class TipografiaApp {
  static const String fuentePrincipal = 'Avenir';

  static const TextTheme texto = TextTheme(
    displayLarge: TextStyle(
      fontFamily: fuentePrincipal,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontFamily: fuentePrincipal,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontFamily: fuentePrincipal,
      fontSize: 16,
      color: Colors.black87,
    ),
    bodyLarge: TextStyle(
      fontFamily: fuentePrincipal,
      fontSize: 18,
      color: Colors.black87,
    ),
    labelLarge: TextStyle(
      fontFamily: fuentePrincipal,
      fontWeight: FontWeight.bold,
    ),
  );
}
