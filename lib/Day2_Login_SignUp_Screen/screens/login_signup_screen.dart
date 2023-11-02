import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day2_Login_SignUp_Screen/screens/signup_screen.dart';

import '../components/button.dart';
import 'login_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      'assets/images/radio_wave_beta.png',
                      color: const Color.fromARGB(255, 10, 185, 121),
                    ),
                  ),
                  MyButton(
                    customColor: Colors.white.withOpacity(0.7),
                    text: "Sign In",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    customColor: Colors.white.withOpacity(0.7),
                    text: "Create an Account",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms of Use",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
