import 'package:flutter/material.dart';

import '../methods/build_contact_avatar.dart';
import '../methods/build_conversation_row.dart';
import '../widgets/drawer_item.dart';
import '../widgets/user_avatar.dart';

class Day11DetailScreen extends StatefulWidget {
  const Day11DetailScreen({super.key});

  @override
  State<Day11DetailScreen> createState() => _Day11DetailScreenState();
}

class _Day11DetailScreenState extends State<Day11DetailScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 6,
                  ),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Messages',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Groups',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF27c1a9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 10,
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Favourite Contacts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alia', 'img1.jpeg'),
                        buildContactAvatar('Ria', 'img2.jpeg'),
                        buildContactAvatar('Raj', 'img3.jpeg'),
                        buildContactAvatar('Priya', 'img4.jpg'),
                        buildContactAvatar('Sona', 'img5.jpeg'),
                        buildContactAvatar('John', 'img6.jpeg'),
                        buildContactAvatar('Nick', 'img7.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEFFFFC),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  buildConversationRow(
                      'Laura', 'Hello, how are you?', 'img1.jpeg', 0),
                  buildConversationRow('Barbie', 'Hi, Barbie', 'img2.jpeg', 5),
                  buildConversationRow('Priya', "I'm hungry", 'img4.jpg', 2),
                  buildConversationRow('Raj', 'Did you work?', 'img3.jpeg', 1),
                  buildConversationRow('Sona', 'So jaa', 'img5.jpeg', 0),
                  buildConversationRow(
                      'John', 'Will you visit me', 'img6.jpeg', 0),
                  buildConversationRow(
                      'Nick', 'Borrow money please', 'img7.jpeg', 4),
                  buildConversationRow('Ria', 'Eat burger', 'img8.jpg', 1),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: Color(0xFF27c1a9),
          onPressed: () {},
          child: Icon(
            Icons.edit_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xF71F1E1E),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Day11DetailScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        UserAvatar(filename: 'img4.jpg'),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Angelina Mathew',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DrawerItem(
                      title: 'Account',
                      icon: Icons.key,
                    ),
                    DrawerItem(
                      title: 'Chats',
                      icon: Icons.chat_bubble,
                    ),
                    DrawerItem(
                      title: 'Notifications',
                      icon: Icons.notifications,
                    ),
                    DrawerItem(
                      title: 'Data and Storage',
                      icon: Icons.storage,
                    ),
                    DrawerItem(
                      title: 'Help',
                      icon: Icons.help,
                    ),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    DrawerItem(
                      title: 'Invite a friend',
                      icon: Icons.people_outline,
                    ),
                  ],
                ),
                DrawerItem(
                  title: 'Log out',
                  icon: Icons.logout,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
