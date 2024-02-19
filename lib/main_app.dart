import 'package:flutter/material.dart';
import 'package:practica3_5c/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(95, 157, 194, 232),
        appBarTheme: const AppBarTheme(color:  Color.fromARGB(95, 60, 62, 62)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 119, 180, 180),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          )
        )
      ),
    );
  }
}