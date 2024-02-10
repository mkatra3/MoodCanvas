import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer
import '/models/colorTheme.dart';
import '/models/colorTheme.dart';
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Canvas'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Center(
        child: Text('This is the Dashboard Page'),
      ),
    );
  }
}
