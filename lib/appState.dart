import 'package:flutter/material.dart';
import 'package:moodcanvas/models/habbit.dart';
import 'package:moodcanvas/models/journal.dart';

class AppData extends ChangeNotifier {
  Map<DateTime, Journal?> AllJournals = {};
  List<Article> resourses = [];

  AppData() {
    if (!AllJournals.containsKey(DateTime.now())) {
      return; // Avoid re-initialization on hot reload
    } else {
      AllJournals[DateTime.now().toUtc()] = Journal(habbits: defaultHabbits());
    }
    notifyListeners();
  }

  List<Habbit> defaultHabbits() {
    List<Habbit> habbits = [];

    habbits.add(Habbit(text: "Drink water", checked: false));
    habbits.add(Habbit(text: "Sleep 8 hrs", checked: false));
    habbits.add(Habbit(text: "Read for 30 mins", checked: false));
    habbits.add(Habbit(text: "Exersice for 1 hour", checked: false));
    habbits
        .add(Habbit(text: "Go for a walk without distraction", checked: false));

    return habbits;
  }

  double getProgress() {
    double count = 0;
    Journal? today = AllJournals[DateTime.now()];
    for (var j in today!.habbits) {
      if (j.checked == true) {
        count = count + 1; 
      }
    }
    return count / today.habbits.length;
  }
}
