import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truckapp/Screens/displayscreen.dart';
import 'package:truckapp/Screens/firstscreen.dart';
import 'package:truckapp/Screens/search_page.dart';

import 'drawer_screen.dart';
import 'listScreenPage.dart';
import 'notification_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List Page = [
    FirstScreen(),
    SearchPage(),
    NotificationPage(),
    SettingsPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: ((value) => onItemTapped(value)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color.fromARGB(255, 39, 37, 37),
        unselectedItemColor: Color.fromARGB(255, 182, 182, 182),
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
