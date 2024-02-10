import 'package:flutter/material.dart';
import 'pages/dashboard.dart'; // Make sure the path matches where you created your file
import 'pages/calendarpage.dart'; // Make sure the path matches where you created your file
import 'pages/habitspage.dart'; // Make sure the path matches where you created your file
import 'pages/resourcespage.dart'; // Make sure the path matches where you created your file
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/habits',
      routes: {
        '/': (context) => DashboardPage(),
        '/calendar': (context) => CalendarPage(),
        '/habits': (context) => HabitsPage(),
        '/resources': (context) => ResourcesPage(),
      },
    );
  }
}


