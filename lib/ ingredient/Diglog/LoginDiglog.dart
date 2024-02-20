import 'package:flutter/material.dart';

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert Dialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('This is an example of an AlertDialog in Flutter.'),
              Text('You can add more content here.'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Đóng AlertDialog
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}