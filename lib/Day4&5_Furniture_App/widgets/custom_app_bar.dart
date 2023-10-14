import 'package:flutter/material.dart';

import '../utils/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: const EdgeInsets.only(top: 50.0),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.menu),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: 65.0,
              width: 50.0,
              decoration: const BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
