import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/assets/color.dart';

class TabBarButton extends StatefulWidget {
  const TabBarButton({super.key});

  @override
  State<TabBarButton> createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  @override
  Widget build(BuildContext context) {
    int id = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i =0; i <4; i++)
          InkWell(
            splashColor: Colors.transparent,
            child: Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Text('ds'),
              ),
            ),
          ),
      ],
    );
  }
}
