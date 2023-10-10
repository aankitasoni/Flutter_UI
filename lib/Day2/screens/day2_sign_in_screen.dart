import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day2/screens/day2_content_screen.dart';

class Day2SignInScreen extends StatelessWidget {
  const Day2SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Serif',
          ),
          // textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
