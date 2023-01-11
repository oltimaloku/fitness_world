import 'package:fitness_app/util/dialog_box.dart';
import 'package:fitness_app/widgets/create_workout_button.dart';
import 'package:flutter/material.dart';

import '../util/add_workout_tile.dart';
import '../util/create_workout_tile.dart';

class SetsScreen extends StatefulWidget {
  const SetsScreen({super.key});

  @override
  State<SetsScreen> createState() => _SetsScreenState();
}

class _SetsScreenState extends State<SetsScreen> {
  final _controller = TextEditingController();

  List workoutsList = [
    ["Bench"],
    ["Bench Pre"],
  ];

  void saveNewTask() {
    setState(() {
      workoutsList.add([_controller.text]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 21, 54, 95),
              Color.fromARGB(255, 21, 54, 95),
              Color.fromARGB(255, 21, 54, 95),
              Color.fromARGB(255, 25, 59, 98),
              Color.fromARGB(255, 34, 71, 117),
              Color.fromARGB(255, 79, 121, 171),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 60, 0, 20),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 25, 20),
                  child: Text(
                    'January 2, 2022',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              ),
              onPressed: createNewTask,
              child: const Text(
                'Create Custom Workout',
                style: TextStyle(
                  color: Color.fromARGB(255, 21, 54, 95),
                ),
              ),
            ),
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                itemCount: workoutsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: CreateWorkoutTile(
                      workoutName: workoutsList[index][0],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
