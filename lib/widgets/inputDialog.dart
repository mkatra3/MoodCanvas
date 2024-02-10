import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final TextEditingController textController;
  final String placeholderText;

  CustomAlertDialog({required this.placeholderText})
      : textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter Text'),
      content: TextField(
        controller: textController,
        decoration: InputDecoration(hintText: placeholderText),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            String enteredText = textController.text;
            // Do something with enteredText
            print('Entered Text: $enteredText');
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
