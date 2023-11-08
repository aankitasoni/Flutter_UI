import 'package:flutter/material.dart';

class Day6HomeScreen extends StatefulWidget {
  const Day6HomeScreen({super.key});

  @override
  State<Day6HomeScreen> createState() => _Day6HomeScreenState();
}

class _Day6HomeScreenState extends State<Day6HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E - Commerce Shop",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
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
        ],
      ),
    );
  }
}
