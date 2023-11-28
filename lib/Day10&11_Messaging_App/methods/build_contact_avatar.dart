import 'package:flutter/material.dart';

import '../widgets/user_avatar.dart';

Padding buildContactAvatar(String name, String filename) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 20.0,
    ),
    child: Column(
      children: [
        UserAvatar(
          filename: filename,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}