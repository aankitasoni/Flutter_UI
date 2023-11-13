import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day7&8_Coffee_Shop_App/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF212325),
      child: Container(
        padding: EdgeInsets.only(
          top: 100,
          bottom: 40,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/day7_images/bg.png',
            ),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Coffee Shop',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  'Felling low? Take a Sip of Coffee',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
