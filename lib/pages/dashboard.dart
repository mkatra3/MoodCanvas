import 'package:flutter/material.dart';
import '../models/journal.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer
import '../widgets/progress_bar.dart'; // Import the ProgressBar

Journal placeholderObject = Journal(habbits: [], journals: [
  "This is entry number one",
  "Entry number two trying to make it long text so we can see when the text wraps around",
  "third entry just because",
  "a",
  "b",
  "c",
  "d",
], emoji: "");

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Canvas'),
      ),
      drawer: const AppDrawer(), // Add the AppDrawer here
      body: Center(
          child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.all(15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ImagePlaceholder(),
                    ProgressBar(),
                  ],
                )),
          ),
          const Flexible(
            flex: 1,
            child: JournalEntriesList(),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
        onPressed: () {  },
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      width: 250,
      height: 250,
      image: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    );
  }
}

// Journal Entries List
class JournalEntriesList extends StatefulWidget {
  const JournalEntriesList({super.key});

  @override
  State<JournalEntriesList> createState() => _JournalEntriesList();
}

class _JournalEntriesList extends State<JournalEntriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: placeholderObject.journals.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 50,
            margin: const EdgeInsets.all(5),
            color: Colors.blue,
            child: Center(
              child: Text(placeholderObject.journals[index]),
            ));
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
