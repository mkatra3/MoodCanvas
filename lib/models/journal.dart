import 'package:moodcanvas/models/habit.dart';

class Journal {
  List<Habit> habbits;
  List<String> journals;
  String emoji; 

  Journal({required this.habbits,required this.journals,required this.emoji});
}
