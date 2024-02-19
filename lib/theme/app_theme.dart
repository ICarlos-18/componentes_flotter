import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  // Declaraciones de colores
  static const mainColor = Color.fromARGB(225, 18, 9, 149);
  static const backColor = Color.fromARGB(95, 160, 157, 232);

  // Declaraciones del Tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: backColor,
  appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.acme(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: mainColor,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 3.0,
        fontStyle: FontStyle.italic,
      ),
      // bodySmall: 
    ),
  );
}