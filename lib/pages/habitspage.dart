import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer

class HabitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habits'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Center(
        child: Text('This is the Habits Page'),
      ),
    );
  }
}
