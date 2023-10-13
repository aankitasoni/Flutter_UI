import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/space.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/text_style.dart';
import 'package:flutter_ui_challenges/Day4&5/model/model.dart';

class ItemCard extends StatelessWidget {
  final Model model;

  const ItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      margin: EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140.0,
            child: Image.asset(model.image[0]),
          ),
          Container(
            width: 180.0,
            child: Column(
              children: [
                Text(
                  model.name,
                  style: itemCardHeading,
                ),
                SpaceBtw(
                  height: 10.0,
                ),
                Text(
                  model.description,
                  maxLines: 3,
                  style: itemCardDes,
                ),
                SpaceBtw(
                  height: 20.0,
                ),
                // Text(
                //   model.price,
                //   style: itemCardPrice,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
