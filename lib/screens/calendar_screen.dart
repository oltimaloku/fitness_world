import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();
  DateTime selectedDay = DateTime.now();

  String formatDateTime(DateTime dateTime) {
    return DateFormat('MMMM d, y').format(dateTime);
  }

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
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          TableCalendar(
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Colors.white),
              weekendStyle: TextStyle(color: Colors.white),
            ),
            headerStyle: HeaderStyle(
              titleCentered: true,
              leftChevronIcon: const Icon(
                Icons.chevron_left_rounded,
                color: Colors.white,
              ),
              rightChevronIcon: const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              ),
              titleTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              formatButtonTextStyle: const TextStyle(color: Colors.white),
              formatButtonDecoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              selectedTextStyle: TextStyle(color: Colors.white),
              tableBorder: TableBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              weekendTextStyle: TextStyle(color: Colors.white),
              defaultTextStyle: TextStyle(color: Colors.white),
              rangeEndTextStyle: TextStyle(color: Colors.red),
            ),
            focusedDay: selectedDay,
            firstDay: DateTime.utc(2022, 10, 16),
            lastDay: DateTime.utc(2032, 10, 16),
            onDaySelected: ((DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                today = focusDay;
              });
              print(today);
            }),
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            formatDateTime(today),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
