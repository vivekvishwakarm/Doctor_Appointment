import 'package:doctors/screens/home_screen.dart';
import 'package:doctors/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int selectedIndex = 0;

  final List _screen = [
    // Home screen
    HomeScreen(),
    //Message Screen
    Container(),
    //Schedule Screen
    Container(),
    //Setting Screen
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Massege",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ],
        ),
      ),
      body: _screen[selectedIndex],
    );
  }
}
