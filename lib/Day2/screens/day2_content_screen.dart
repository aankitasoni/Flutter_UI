import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day2/models/day2_custom_suffix_icon.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign in with your E-mail and Password  \nor continue with Social Media',
                  textAlign: TextAlign.center,
                ),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSuffixIcon(
              //   svgIcon: 'assets/icons/email_icon.svg',
              // ),
              // contentPadding: const EdgeInsets.symmetric(
              //   horizontal: 42,
              //   vertical: 15,
              // ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: Colors.grey),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: Colors.grey),
                gapPadding: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
