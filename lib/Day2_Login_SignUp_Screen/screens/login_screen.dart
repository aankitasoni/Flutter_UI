import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day2_Login_SignUp_Screen/components/button.dart';
import 'package:flutter_ui_challenges/Day2_Login_SignUp_Screen/components/text.dart';
import 'package:flutter_ui_challenges/Day2_Login_SignUp_Screen/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;

  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;

  check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/radio_wave_beta.png',
                color: const Color.fromARGB(255, 10, 185, 121),
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              const MyText(hintText: 'Email or Username'),
              const SizedBox(height: 20),
              MyText(
                hintText: 'Password',
                onPressed: showPassword,
                obsecureText: showPass ? false : true,
                icon: showPass ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.grey[500],
                          ),
                          child: Checkbox(
                            checkColor: Colors.white,
                            value: checkTheBox ? true : false,
                            onChanged: (value) {
                              check();
                            },
                          ),
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 185, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                customColor: const Color.fromARGB(255, 10, 185, 121),
                text: 'Sign In',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'or Sign In With',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 50,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 185, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
