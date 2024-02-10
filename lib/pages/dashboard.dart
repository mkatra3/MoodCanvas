import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Canvas'),
      ),
      body: Center(
        child: Text('Dashboard Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to add a new journal entry
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
