import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/color.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/space.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/text_style.dart';
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
            CustomAppBar(),
        Text(
          'Furniture in\nUnique Style',
          style: heading,
        ),
        SpaceBtw(
          height: 10,
        ),
        Text(
          'We have wide range of Furniture',
          style: subHeading,
        ),
        SpaceBtw(height: 20),
        Container(
          height: 70.0,
          child: TabBarButton(),
        ),
        Expanded(
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: models.length,
              itemBuilder: (builder, index) {
                final mode1 = models[index];
        return ItemCard(model : mode1);
        },
        ),
      ),
      ],
    ),)
    ,
    );
  }
}
