import 'package:flutter/material.dart';
import '/models/colors.dart'; // Make sure this contains the definition for 'darkblue'

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
              color: darkblue, // Use your defined 'darkblue' color
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start horizontally
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40, // Adjust the radius as needed
                  backgroundImage: AssetImage('assets/Animals/Lizard/baby_lizard.PNG'), // Replace with your actual asset path
                ),
                SizedBox(height: 10), // Add some space between the avatar and the text
                Text(
                  'Baby Lizard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: Colors.black),
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.black),
            title: const Text('Calendar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/calendar');
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box, color: Colors.black),
            title: const Text('Habits'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/habits');
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books, color: Colors.black),
            title: const Text('Resources'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/resources');
            },
          ),
        ],
      ),
    );
  }
}
