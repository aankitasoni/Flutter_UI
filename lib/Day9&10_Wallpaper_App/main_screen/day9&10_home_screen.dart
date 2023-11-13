import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_challenges/Day9&10_Wallpaper_App/screens/day9_detail_screen.dart';

class Day9And10HomeScreen extends StatefulWidget {
  const Day9And10HomeScreen({super.key});

  @override
  State<Day9And10HomeScreen> createState() => _Day9And10HomeScreenState();
}

class _Day9And10HomeScreenState extends State<Day9And10HomeScreen> {
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Day9DetailScreen(),
    );
  }
}
