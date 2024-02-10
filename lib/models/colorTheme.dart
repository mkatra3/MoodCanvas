import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData.from(
  colorScheme: const ColorScheme.light(
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
  textTheme: GoogleFonts.poppinsTextTheme(), // Apply Google Fonts to the entire app
).copyWith(
  // Apply additional customizations that ThemeData.from might not cover
  appBarTheme: const AppBarTheme(
    color: orange, // For AppBar background
    foregroundColor: Colors.black, // For AppBar text/icons
  ),

  // Further customizations if needed
);
