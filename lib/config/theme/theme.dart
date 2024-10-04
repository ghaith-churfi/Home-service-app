import 'package:flutter/material.dart';

const textTheme = 'Lexend';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: textTheme,
    brightness: Brightness.light,
    primaryColor: Colors.blue, // Button color
    scaffoldBackgroundColor: Colors.white, // Background color
    cardColor: Colors.white, // Card/Container background
    appBarTheme: AppBarTheme(
      color: Colors.white, // AppBar background
      iconTheme: IconThemeData(color: Colors.black), // Icon color
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold), // AppBar title style
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal), // Body text color and style
      bodyMedium:
          TextStyle(color: Colors.black, fontSize: 14), // Secondary text color
      titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold), // Heading text style
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
        shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        foregroundColor:
            WidgetStateProperty.all(Colors.white), // Button text color
        backgroundColor:
            WidgetStateProperty.all(Colors.blue), // Button background color
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[100], // Input field background
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      labelStyle: TextStyle(color: Colors.grey[800]), // Label text color
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: textTheme,
    brightness: Brightness.dark,
    primaryColor: Colors.blue, // Button color
    scaffoldBackgroundColor: Colors.black, // Background color
    cardColor: Color(0xFF1E1E1E), // Card/Container background
    appBarTheme: AppBarTheme(
      color: Colors.black, // AppBar background
      iconTheme: IconThemeData(color: Colors.white), // Icon color
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold), // AppBar title style
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal), // Main text color
      bodyMedium: TextStyle(
          color: Colors.white70, fontSize: 14), // Secondary text color
      titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold), // Heading text style
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
        shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        foregroundColor:
            WidgetStateProperty.all(Colors.white), // Button text color
        backgroundColor:
            WidgetStateProperty.all(Colors.blue), // Button background color
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF333333), // Input field background
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      labelStyle: TextStyle(color: Colors.grey[400]), // Label text color
    ),
  );
}
