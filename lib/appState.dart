import 'package:flutter/material.dart';
import 'package:moodcanvas/models/habit.dart';
import 'package:moodcanvas/models/journal.dart';

class AppData extends ChangeNotifier {
  Map<DateTime, Journal?> allJournals = {};
  Journal tempJournal = Journal(
  habits: [
    Habit(text: "Read for 30 mins", checked: false),
    Habit(text: "Go for a walk without distraction", checked: true),
    Habit(text: "Drink water", checked: true),
    Habit(text: "Sleep 8 hrs", checked: false),
    Habit(text: "Exercise for 1 hour", checked: false)
  ],
  journals: [
  "today I went for a morning walk and saw my bestie Steve!! I love that guy",
  "our amazing team member got coffee for us at Ground Up and we went to the UIC SparkHacks Hackathon",
  "this event is so fun, all the organizers put so much effort and you can tell they did their best",
  "my team won UIC SparkHacks!!! I'm so happy :)",
  ],
  emoji: "");
  double completionRate = 0;

  AppData() {
    completionRate = initRate();
    tempJournal ;
    notifyListeners();
  }

  double initRate() {
    int totalHabits = tempJournal.habits.length;
    double completedHabits = 0;
    for (var e in tempJournal.habits) {
      if (e.checked) {
        completedHabits++;
      }
    }
    return completedHabits/totalHabits;
  }

  void updateRate(double val) {
    completionRate = val;
    notifyListeners();
  }

  void addEntry(String msg) {
    tempJournal.journals.add(msg);
    notifyListeners();
  }

}
