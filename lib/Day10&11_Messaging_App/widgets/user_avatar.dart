import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String filename;

  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset(
          // takes img provider, so .image
            'assets/images/day11_images/$filename').image,
      ),
    );
  }
}