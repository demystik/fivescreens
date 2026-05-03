import 'package:fivescreens/screens/first_screen.dart';
import 'package:fivescreens/screens/user_profile.dart';
import 'package:flutter/material.dart';

class FivescreensBottomNavbar extends StatefulWidget {
  const FivescreensBottomNavbar({super.key});

  @override
  State<FivescreensBottomNavbar> createState() =>
      _FivescreensBottomNavbarState();
}

class _FivescreensBottomNavbarState extends State<FivescreensBottomNavbar> {
  int selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screens = [
    FirstScreen(),
    const Scaffold(),
    const Scaffold(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Saved',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
