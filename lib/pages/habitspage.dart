import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer
import '../widgets/progress_bar.dart'; // Import the ProgressBar

class HabitPlaceholder {
  late bool completed;
  late String title;

  HabitPlaceholder(this.title, this.completed);
}

// Populate HabitPlaceholder
List<HabitPlaceholder> habitList = [
  HabitPlaceholder("Habit 1", false),
  HabitPlaceholder("Habit 2", false),
  HabitPlaceholder("Habit 3", false),
];

// Habits Page
class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPage();
}

class _HabitsPage extends State<HabitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habits'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: const Row(children: [
        Flexible(
          flex: 3,
          child: Center(
            child: HabitsList(),
          ),
        ),
        Flexible(
            flex: 1, child: RotatedBox(quarterTurns: -1, child: ProgressBar()))
      ]),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
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
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: habitList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: CheckboxListTile(
              title: Text('Entry ${habitList[index].title}'),
              value: habitList[index].completed,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  habitList[index].completed = value!;
                });
              },
            ),
          );
        });
  }
}
