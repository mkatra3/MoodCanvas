import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Center(
        child: Text('This is the Resources Page'),
      ),
    );
  }
}
