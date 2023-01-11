import 'package:flutter/material.dart';

class SetInput extends StatelessWidget {
  final String text;

  const SetInput({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: SizedBox(
            height: 40,
            width: 70,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'kg',
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white,
                )),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: SizedBox(
            height: 40,
            width: 70,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'reps',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
