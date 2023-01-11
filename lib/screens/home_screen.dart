import 'package:flutter/material.dart';

import '../util/add_workout_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // list of workouts
  List workoutsList = [
    ["Bench"],
    ["Bench Pre"],
  ];

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
            // PROFILE UPDATE
            Container(
              width: 400,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Container(
                      width: 160,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 80,
                          backgroundImage: AssetImage(
                              '/Users/oltimaloku/Projects/LearnFlutter/Apps/fitness_app/lib/assets/ai-robot.png')),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 20, 35, 8),
                        child: Text(
                          'Leart Maloku',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.2,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 35, 8),
                        child: Text('165 lbs',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // ADD WORKOUT TEXT
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20, 0, 10),
                child: Text(
                  'Add Workouts',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // SCROLLABLE CONTAINER BORDER
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
                    child: AddWorkoutTile(
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
