import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/calendar');
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text('Habits'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/habits');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Resources'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/resources');
            },
          ),
        ],
      ),
    );
  }
}
