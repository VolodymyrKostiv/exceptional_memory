import 'package:flutter/material.dart';
import 'theory/screens/theory_main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exceptional Memory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
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
  static const TextStyle _titleStyle = TextStyle(
    fontSize: 30,
    fontFamily: "Times New Roman",
  );
  static const List<String> pageNames = [
    'Theory',
    'Library',
    'I',
    'My texts',
    'Main',
  ];

  static const List<Widget> pages = [
    TheoryMainPage(),
    TheoryMainPage(),
    TheoryMainPage(),
    TheoryMainPage(),
    TheoryMainPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text(
            pageNames.elementAt(_selectedIndex),
          ),
          fit: BoxFit.fitHeight,
        ),
        titleTextStyle: _titleStyle,
      ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'General',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
