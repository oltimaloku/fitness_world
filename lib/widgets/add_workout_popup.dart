import 'dart:convert';

import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/hero_dialog_route.dart';
import 'package:fitness_app/widgets/set_input.dart';
import 'package:flutter/material.dart';

class AddWorkoutButton extends StatelessWidget {
  const AddWorkoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).push(
          HeroDialogRoute(
            settings: ModalRoute.of(context)!.settings,
            builder: (context) {
              return const AddWorkoutCard();
            },
          ),
        );
      },
    );
  }
}

const String _heroAddWorkout = 'add-todo-hero';

class AddWorkoutCard extends StatelessWidget {
  const AddWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddWorkout,
          child: Material(
            color: Color.fromARGB(255, 21, 54, 95),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Bench Press',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(Icons.close),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SetInput(
                        text: '1',
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Add Set',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
