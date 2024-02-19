
import 'package:flutter/material.dart';

class AppTheme{

  // Declaraciones de colores
  static const mainColor = Color.fromARGB(95, 19, 11, 137);
  static const backColor = Color.fromARGB(95, 160, 157, 232);

  // Declaraciones del Tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
     scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: mainColor,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        ),
  );
}