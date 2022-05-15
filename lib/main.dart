import 'package:flutter/material.dart';
import 'library/screens/poem_lib.dart';
import 'theory/screens/theory_main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exceptional Memory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 14, 75, 125),
        fontFamily: 'Calibri',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          headline2: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 14, 75, 125),
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 14, 75, 125),
            fontWeight: FontWeight.w300,
          ),
          bodyText2: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const NavigationWidget(),
    );
  }
}

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidget();
}

class _NavigationWidget extends State<NavigationWidget> {
  int _selectedIndex = 0;
  static const List<String> pageNames = [
    'Theory',
    'Library',
    'I',
    'My texts',
    'Main',
  ];

  static const List<Widget> pages = [
    TheoryMainScreen(),
    PoemLib(),
    TheoryMainScreen(),
    TheoryMainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 14, 75, 125),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Theory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'I',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'My texts',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
