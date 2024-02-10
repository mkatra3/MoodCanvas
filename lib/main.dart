import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/calendarpage.dart';
import 'pages/habitspage.dart';
import 'pages/resourcespage.dart';
import 'models/colorTheme.dart'; // Make sure this import points to your updated theme file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List App',
      theme: appTheme, // This now uses ColorScheme for theming
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardPage(),
        '/calendar': (context) => const CalendarPage(),
        '/habits': (context) => const HabitsPage(),
        '/resources': (context) => const ResourcesPage(),
      },
    );
  }
}
