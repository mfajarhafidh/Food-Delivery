import 'package:assigment_isi/pages/history/history_screen.dart';
import 'package:assigment_isi/pages/home/home_screen.dart';
import 'package:assigment_isi/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/color_schema.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Halo dek"),
    const ProfileScreen(),
    const HistoryScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: deepOrange800,
        unselectedItemColor: grey400,
        items: const [
          BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: Icon(Icons.history),
              ),
        ]
      ),
    );
  }
}