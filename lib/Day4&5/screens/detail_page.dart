import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day4&5/model/model.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/color.dart';
import 'package:flutter_ui_challenges/Day4&5/utils/text_style.dart';

class DetailsPage extends StatefulWidget {
  final Model model;

  const DetailsPage({super.key, required this.model});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectIndex = 0;
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: black,
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.model.category,
          style: itemCardHeading,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: height / 1.7,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: height / 10.0,
                  child: Container(
                    width: 60.0,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.3),
                        offset: const Offset(5, 5),
                        blurRadius: 10.0,
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
