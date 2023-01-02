import 'package:fitness_app/home_screen.dart';
import 'package:fitness_app/sets_screen.dart';
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
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 0, 34, 147),
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
      body: PageView(
          controller: pageController,
          children: const [HomeScreen(), SetsScreen()],
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          }),
      appBar: AppBar(
        title: const Text('Fitness World'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Sets',
          ),
        ],
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
