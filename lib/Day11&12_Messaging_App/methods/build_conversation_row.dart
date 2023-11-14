import 'package:flutter/material.dart';

import '../widgets/user_avatar.dart';

Column buildConversationRow(
    String name, String message, String filename, int msgCount) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatar(filename: filename),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
              top: 5,
            ),
            child: Column(
              children: [
                Text(
                  '16:35',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                if (msgCount > 0)
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xFF27c1a9),
                    child: Text(
                      msgCount.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
      Divider(
        indent: 70,
      ),
    ],
  );
}