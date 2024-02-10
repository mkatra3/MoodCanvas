import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Center(
        child: Text('This is the Calendar Page'),
      ),
    );
  }
}
