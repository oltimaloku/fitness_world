import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/workouts_screen.dart';
import 'package:fitness_app/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 21, 54, 95),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 28, 72, 126),
            secondary: const Color.fromARGB(255, 1, 57, 95)),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomeScreen(), SetsScreen()];
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 54, 95),
      body: PageView(
          controller: pageController,
          children: const [HomeScreen(), SetsScreen()],
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          }),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: 'Workouts',
              ),
            ],
            currentIndex: currentPage,
            onTap: (int index) {
              setState(() {
                pageController.jumpToPage(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
