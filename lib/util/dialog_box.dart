import 'package:fitness_app/util/save_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 25, 68, 121),
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                iconColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter Workout Name',
                fillColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SaveButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                SaveButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
