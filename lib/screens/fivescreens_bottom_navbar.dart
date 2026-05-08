import 'package:flutter/material.dart';

class FivescreensBottomNavbar extends StatefulWidget {
  const FivescreensBottomNavbar({super.key});

  @override
  State<FivescreensBottomNavbar> createState() => _FivescreensBottomNavbarState();
}

class _FivescreensBottomNavbarState extends State<FivescreensBottomNavbar> {
  
  int selectedIndex = 0;

  void navigationBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}