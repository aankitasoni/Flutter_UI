import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/color.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/text_style.dart';
import 'package:flutter_ui_challenges/Day4&5/data/tabbar_menu.dart';

class TabBarButton extends StatefulWidget {
  const TabBarButton({super.key});

  @override
  State<TabBarButton> createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  int id = 0;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < tabMenu.length; i++)
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                id = tabMenu[i].id;
              });
            },
            child: Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: id == i ? grey : Colors.transparent,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Text(
                  tabMenu[i].name,
                  style: id == i ? tabButtonS : tabButtonU,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
