import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  SaveButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      child: Text(text),
    );
  }
}
