import 'package:flutter/material.dart';
import 'package:moodcanvas/widgets/inputDialog.dart';
import 'package:provider/provider.dart';
import '../appState.dart';
import '../models/habit.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer
import '../widgets/progress_bar.dart'; // Import the ProgressBar

// Habits Page
class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPage();
}

class _HabitsPage extends State<HabitsPage> {
  HabitsList myList = const HabitsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habits'),
      ),
      drawer: const AppDrawer(), // Add the AppDrawer here
      body: Row(children: [
        Flexible(
          flex: 3,
          child: Center(
            child: myList,
          ),
        ),
        const Flexible(flex: 1, child: ProgressBar())
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomAlertDialog(placeholderText: 'Enter text...');
              },
            ).then((result) {
              if (result != null) {
                Provider.of<AppData>(context, listen: false).addhabit(result);
                // Handle the result (entered text)
                // userInputText = result;
                print('User input: $result');
                // setState(() {
                //   habitList.add(result);
                // });
              }
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}

// Habits List
class HabitsList extends StatefulWidget {
  const HabitsList({super.key});

  @override
  State<HabitsList> createState() => _HabitsListState();
}

class _HabitsListState extends State<HabitsList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, state, child) {
        return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: state.tempJournal.habits.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 50,
                child: CheckboxListTile(
                  title: Text(state.tempJournal.habits[index].text),
                  value: state.tempJournal.habits[index].checked,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      state.tempJournal.habits[index].checked = value!;
                      updateRate(state.tempJournal.habits);
                    });
                  },
                ),
              );
            });
      },
    );
  }

  void updateRate(List<Habit> habitList) {
    int totalHabits = habitList.length;
    double completedHabits = 0;
    for (var e in habitList) {
      if (e.checked) {
        completedHabits++;
      }
    }
    double completionRate = completedHabits / totalHabits;
    Provider.of<AppData>(context, listen: false).updateRate(completionRate);
  }
}
