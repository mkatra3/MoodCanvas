import 'package:flutter/material.dart';
import 'colors.dart'; // Assuming this file contains your Color objects

final ThemeData appTheme = ThemeData.from(
  colorScheme: ColorScheme.light(
    primary: orange,
    onPrimary: Colors.white, // Ideal for text/icons on top of primary color
    secondary: orange,
    onSecondary: Colors.white, // Ideal for text/icons on top of secondary color
    error: Colors.red, // Default is fine, but you can customize it
    onError: Colors.white, // Ideal for text/icons on top of error color
    background: blueish,
    onBackground: Colors.black, // Ideal for text/icons on top of background color
    surface: blueish,
    onSurface: Colors.black, // Ideal for text/icons on top of surface color
  ),
).copyWith(
  // Apply additional customizations that ThemeData.from might not cover
  appBarTheme: AppBarTheme(
    color: orange, // For AppBar background
    foregroundColor: Colors.black, // For AppBar text/icons
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: green2),
    bodyMedium: TextStyle(color: Colors.black),
  ),
  // Further customizations if needed
);
