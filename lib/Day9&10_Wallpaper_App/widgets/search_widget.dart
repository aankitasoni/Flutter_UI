import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search here...',
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}
