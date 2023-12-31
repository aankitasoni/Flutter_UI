import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5_Furniture_App/utils/color.dart';
import 'package:flutter_ui_challenges/Day4&5_Furniture_App/utils/space.dart';
import 'package:flutter_ui_challenges/Day4&5_Furniture_App/utils/text_style.dart';
import 'package:flutter_ui_challenges/Day4&5_Furniture_App/data/model_data.dart';
import 'package:flutter_ui_challenges/Day4&5_Furniture_App/widgets/item_card.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/tabbar_button.dart';

class Day4And5HomeScreen extends StatelessWidget {
  const Day4And5HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const Text(
              'Furniture in\nUnique Style',
              style: heading,
            ),
            const SpaceBtw(
              height: 10,
            ),
            const Text(
              'We have wide range of Furniture',
              style: subHeading,
            ),
            const SpaceBtw(height: 20),
            Container(
              height: 70.0,
              child: const TabBarButton(),
            ),
            Expanded(           // all size lega
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: models.length,
                itemBuilder: (builder, index) {
                  final mode1 = models[index];
                  return ItemCard(model: mode1);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          height: 100.0,
          color: green,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bottomNavButton(
                      onPress: () {},
                      icon: Icons.home_outlined,
                    ),
                    const SpaceBtw(
                      width: 60,
                    ),
                    bottomNavButton(
                      onPress: () {},
                      icon: Icons.chat_outlined,
                    ),
                    const SpaceBtw(
                      width: 60,
                    ),
                    bottomNavButton(
                      onPress: () {},
                      icon: Icons.person_outline_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconButton bottomNavButton({
    required Function() onPress,
    required IconData icon,
    // required Color color,
  }) =>
      IconButton(
        onPressed: onPress,
        icon: Icon(
          icon,
          color: Colors.red,
          size: 40,
        ),
      );
}
