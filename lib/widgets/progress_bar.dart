import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBar();
}

class _ProgressBar extends State<ProgressBar> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const RotatedBox(
        quarterTurns: -1,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              minHeight: 40,
              value: 0.5,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              semanticsLabel: 'Linear progress indicator',
            ),
          ),
        );
  }
}
