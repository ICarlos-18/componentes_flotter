import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  // Declaraciones de colores
  static const mainColor = Color.fromARGB(224, 13, 134, 227);
  static const backColor = Color.fromARGB(110, 123, 216, 239);
  static const accentcolor = Color.fromARGB(199, 6, 113, 156);


  // Declaraciones del Tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: backColor,
  appBarTheme: AppBarTheme(
    color: mainColor,
    titleTextStyle: GoogleFonts.pacifico(
      color: backColor,
      fontSize: 28.5,
      fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 77, 158, 224),
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          accentcolor,
          ),
        foregroundColor: MaterialStateProperty.all(
          backColor,
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(fontSize: 22.0),
          ),
      ),
    ),
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
      bodyMedium: GoogleFonts.acme(
        color: accentcolor,
        fontSize: 18.5,
        fontWeight: FontWeight.w500,
        decorationStyle: TextDecorationStyle.double,
        decoration: TextDecoration.underline
      ),
    ),
  );
}