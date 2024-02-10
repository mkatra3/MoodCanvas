import 'package:flutter/material.dart';
import 'package:moodcanvas/models/habit.dart';
import 'package:moodcanvas/models/journal.dart';

class AppData extends ChangeNotifier {
  Map<DateTime, Journal?> allJournals = {};
  double completionRate = 0;

  AppData() {
    notifyListeners();
  }

  List<Habit> defaultHabits() {
    List<Habit> habits = [];

    habits.add(Habit(text: "Drink water", checked: false));
    habits.add(Habit(text: "Sleep 8 hrs", checked: false));
    habits.add(Habit(text: "Read for 30 mins", checked: false));
    habits.add(Habit(text: "Exercise for 1 hour", checked: false));
    habits
        .add(Habit(text: "Go for a walk without distraction", checked: false));

    return habits;
  }

  void updateRate(double val) {
    completionRate = val;
    notifyListeners();
  }

}
