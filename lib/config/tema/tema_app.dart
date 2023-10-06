import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData mainTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1B396A), // Color para el AppBar
      ),
      scaffoldBackgroundColor: Colors.white, // Color para el fondo del cuerpo
    );
  }
}
