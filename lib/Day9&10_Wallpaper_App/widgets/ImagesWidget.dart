import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day9&10_Wallpaper_App/screens/day9_image_screen.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: [
          for (int i = 91; i < 98; i++)
            GestureDetector(
              onTap: () {
                context.pushTransparentRoute(ImageScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: '$i',
                    child: Image.asset(
                      'assets/images/day9_images/$i.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
