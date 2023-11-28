
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/day9_detail_screen.dart';


class Day8And9HomeScreen extends StatefulWidget {
  const Day8And9HomeScreen({super.key});

  @override
  State<Day8And9HomeScreen> createState() => _Day9And10HomeScreenState();
}

class _Day9And10HomeScreenState extends State<Day8And9HomeScreen> {
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
