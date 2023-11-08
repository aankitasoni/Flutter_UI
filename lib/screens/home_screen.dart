import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day3_Plant_App/main_screen/day3_home_screen.dart';
import 'package:flutter_ui_challenges/Day6_E-Commerce_App/main_screen/Day6_home_screen.dart';
import 'package:flutter_ui_challenges/Day7&8_Coffee_Shop_App/main_screen/day7&8_home_screen.dart';
import '../Day1_Onboarding_Screen/screens/day1_home_screen.dart';
import 'package:flutter_ui_challenges/Day2_Login_SignUp_Screen/main_screen/day2_home_screen.dart';
import '../Day4&5_Furniture_App/screens/day4&5_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> days = [
    'Day 1', // d
    'Day 2', // d
    'Day 3',
    'Day 4 & 5', //d
    'Day 6',
    'Day 7 & 8',
    'Day 9',
    'Day 10',
    'Day 11',
    'Day 12',
    'Day 13',
    'Day 14',
    'Day 15',
    'Day 16',
    'Day 17',
    'Day 18',
    'Day 19',
    'Day 20',
    'Day 21',
    'Day 22',
    'Day 23',
    'Day 24',
    'Day 25',
    'Day 26',
    'Day 27',
    'Day 28',
    'Day 29',
    'Day 30',
  ];

  final List route = [
    const Day1HomeScreen(),
    const Day2HomeScreen(),
    const Day3HomeScreen(),
    const Day4And5HomeScreen(),
    const Day6HomeScreen(),
    const Day7And8HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 850,
              child: ListView.builder(
                itemCount: days.length,
                physics: const BouncingScrollPhysics(),
                //scroll and reverse back
                shrinkWrap: true,
                // listview adjust in the particular space
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => route[index],
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.purple,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            days[index],
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'serif',
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
