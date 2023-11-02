import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final void Function()? onPressed;
  final bool obsecureText; // hide the dta entered in the field

  const MyText({
    super.key,
    required this.hintText,
    this.icon,
    this.onPressed,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[600]!.withOpacity(0.52),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              style: const TextStyle(
                color: Color.fromARGB(255, 10, 185, 121),
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  )),
              obscureText: obsecureText,
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            color: const Color.fromARGB(255, 10, 185, 121),
          ),
        ],
      ),
    );
  }
}
