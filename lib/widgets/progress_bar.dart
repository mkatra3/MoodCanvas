import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../appState.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBar();
}

class _ProgressBar extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Consumer<AppData>(
            builder: (context, state, child) {
              return LinearProgressIndicator(
                minHeight: 40,
                value: state.completionRate,
                backgroundColor: Colors.white54,
                valueColor: const AlwaysStoppedAnimation(Colors.blue),
                semanticsLabel: 'Linear progress indicator',
              );
            },
          )),
    );
  }
}
