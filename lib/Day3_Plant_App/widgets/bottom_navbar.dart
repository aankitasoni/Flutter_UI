import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day3_Plant_App/main_screen/day3_home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController pageController = PageController();
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: child.length,
        controller: pageController,
        onPageChanged: (value) => setState(() => selectIndex = value),
        itemBuilder: (itemBuilder, index) {
          return Container(
            child: child[index],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> child = [
  const Day3HomeScreen(),
  Container(color: Colors.white),
  Container(color: Colors.white),
  Container(color: Colors.white),
];
