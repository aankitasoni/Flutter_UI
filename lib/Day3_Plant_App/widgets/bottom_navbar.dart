import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day3_Plant_App/main_screen/day3_home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

List<Widget> child = [
  const Day3HomeScreen(),
  Container(color: Colors.white),
  Container(color: Colors.white),
  Container(color: Colors.white),

];
