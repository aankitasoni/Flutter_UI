import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/data/model_data.dart';
import 'package:flutter_ui_challenges/Day4&5/screens/detail_page.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/space.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/text_style.dart';
import 'package:flutter_ui_challenges/Day4&5/model/model.dart';

class ItemCard extends StatelessWidget {
  final Model model;

  const ItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(
            builder: (builder) => DetailsPage(model: model),
          ),
        );
      },
      child: Container(
        height: 140.0,
        margin: const EdgeInsets.only(bottom: 30.0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: itemCardHeading,
                  ),
                  const SpaceBtw(
                    height: 10.0,
                  ),
                  Text(
                    model.description,
                    maxLines: 3,
                    style: itemCardDes,
                  ),
                  const SpaceBtw(
                    height: 10.0,
                  ),
                  Text(
                    model.price,
                    style: itemCardPrice,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
