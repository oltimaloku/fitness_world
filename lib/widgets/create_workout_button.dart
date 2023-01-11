import 'dart:convert';

import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/widgets/hero_dialog_route.dart';
import 'package:fitness_app/widgets/set_input.dart';
import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: PopupMenuButton<SampleItem>(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(8),
          splashRadius: 25,
          offset: Offset(20, 55),
          initialValue: selectedMenu,
          // Callback that sets the selected popup menu item.
          onSelected: (SampleItem item) {
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            PopupMenuItem<SampleItem>(
              value: SampleItem.itemOne,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Edit'),
                  Icon(Icons.edit),
                ],
              ),
            ),
            PopupMenuItem<SampleItem>(
              value: SampleItem.itemTwo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Remove'),
                  Icon(Icons.remove_circle_outline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
