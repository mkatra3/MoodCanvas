import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer

class HabitPlaceholder {
  late bool completed;
  late String title;

  HabitPlaceholder(this.title, this.completed);
}

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
        title: Text('Habits'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Center(
        child: HabitsList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add)
      ),
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

  // Populate HabitPlaceholder
  List<HabitPlaceholder> habitList =
  [HabitPlaceholder("Task 1", false), HabitPlaceholder("Task 2", false),
    HabitPlaceholder("Task 3", false),
  ];

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
              onChanged:(bool? value) {
                setState(() {
                  habitList[index].completed = value!;
                });
              },
            ),
          );
        }
    );
  }
}
