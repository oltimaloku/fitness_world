import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              children: [
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
            Container(
              child: TableCalendar(
                focusedDay: today,
                firstDay: DateTime.utc(2022, 10, 16),
                lastDay: DateTime.utc(2032, 10, 16),
              ),
            )
          ],
        ));
  }
}
