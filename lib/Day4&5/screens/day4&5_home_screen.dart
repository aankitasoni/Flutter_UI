import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/color.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/space.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/text_style.dart';
import 'package:flutter_ui_challenges/Day4&5/data/model_data.dart';
import 'package:flutter_ui_challenges/Day4&5/widgets/item_card.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/tabbar_button.dart';

class Day4And5HomeScreen extends StatelessWidget {
  const Day4And5HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
              child: TabBarButton(),
            ),
            Expanded(          // all size lega
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
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
                  children: [
                    bottomNavButton(
                        onPressed: () {},
                        icon: Icons.menu,
                      color: Colors.red,
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
    required Function() onPressed,
    required IconData icon,
    required Color color,
  }) =>
      IconButton(
        onPressed: () {},
        icon: Icon(icon,
          color: color,
        ),
      );
}
