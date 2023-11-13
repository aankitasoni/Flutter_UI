import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
        onDismissed: () {
          Navigator.of(context).pop();
        },
        direction: DismissiblePageDismissDirection.multi,
        child: Hero(
          tag: '91',
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/day9_images/91.jpg',
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              color: Colors.black.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.share,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.download,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.favorite_border,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
