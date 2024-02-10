import 'package:flutter/material.dart';
import '/models/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: orange,
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
            leading: const Icon(Icons.dashboard),
            title:  const Text('Dashboard', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Calendar', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/calendar');
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box),
            title: const Text('Habits', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/habits');
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text('Resources', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/resources');
            },
          ),
        ],
      ),
    );
  }
}
