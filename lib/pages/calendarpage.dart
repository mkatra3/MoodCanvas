import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/app_drawer.dart';
import 'package:moodcanvas/pages/dashboard%20copy.dart';
class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  String _selectedAvatar = 'assets/Animals/Panda/Baby_panda.png'; // Default avatar

  // Function to determine the avatar based on the selected day
  String _getAvatarForDay(DateTime day) {
    final int dayOfMonth = day.day;
    switch (dayOfMonth % 3) { // Simple logic to rotate between 3 avatars
      case 0:
        return 'assets/Animals/Chicken/Chicken_egg.png';
      case 1:
        return 'assets/Animals/Chicken/baby_chicken.png';
      case 2:
        return 'assets/Animals/Chicken/Chicken_egg.png';
      default:
        return 'assets/Animals/Panda/Baby_panda.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _selectedAvatar = _getAvatarForDay(selectedDay); // Update avatar based on selected day
              });
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() { _calendarFormat = format; });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          Expanded(
            child: Center(
              child: InkWell(child: Image.asset(_selectedAvatar, fit: BoxFit.cover)
              ,onTap: () {
                              Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const DashboardPage2()),
               );

                },), // Display the selected avatar
            ),
          ),
        ],
      ),
    );
  }
}
