import 'package:flutter/material.dart';

import '../widgets/add_workout_popup.dart';
import '../widgets/create_workout_button.dart';

class CreateWorkoutTile extends StatelessWidget {
  final String workoutName;

  const CreateWorkoutTile({super.key, required this.workoutName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 25, 68, 121),
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: Color.fromARGB(255, 42, 54, 98),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 13, 26, 66),
                offset: Offset(2.0, 2.0),
                blurRadius: 2.0,
                spreadRadius: 0.0)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                workoutName,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(child: PopupMenuExample()),
        ],
      ),
    );
  }
}
