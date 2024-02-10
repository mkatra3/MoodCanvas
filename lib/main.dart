import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/calendarpage.dart';
import 'pages/habitspage.dart';
import 'pages/resourcespage.dart';
import 'models/colorTheme.dart'; // Make sure this import points to your updated theme file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List App',
      theme: appTheme, // This now uses ColorScheme for theming
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardPage(),
        '/calendar': (context) => CalendarPage(),
        '/habits': (context) => HabitsPage(),
        '/resources': (context) => ResourcesPage(),
      },
    );
  }
}
