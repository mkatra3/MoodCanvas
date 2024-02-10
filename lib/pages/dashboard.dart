import 'package:flutter/material.dart';
import 'package:moodcanvas/models/colors.dart';
import 'package:moodcanvas/widgets/inputDialog.dart';
import 'package:provider/provider.dart';
import '../appState.dart';
import '../widgets/app_drawer.dart'; // Import the AppDrawer
import '../widgets/progress_bar.dart'; // Import the ProgressBar

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
                    const ProgressBar(),
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
        onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomAlertDialog(placeholderText: 'Enter text...');
            },
          ).then((result) {
            if (result != null) {
              // Handle the result (entered text)
              // userInputText = result;
              print('User input: $result');
              Provider.of<AppData>(context, listen: true).addEntry(result);
              // setState(() {
              //   habitList.add(result);
              // });
              
            }
          });
        },
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
    return Consumer<AppData>(
      builder: (context, state, child) {
        return ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: state.tempJournal.journals.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.all(0),
                color: beige,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(state.tempJournal.journals[index]),
                ));
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            color: blueish,
          ),
        );
      },
    );
  }
}
