import 'package:moodcanvas/models/habit.dart';

class Journal {
  List<Habit> habits;
  List<String> journals;
  String emoji; 

  Journal({required this.habits,required this.journals,required this.emoji});
}
