import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';
import 'package:mydoctor/shared/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 90,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Masuk dan mulai\nberkonsultasi',
                  style: largeText,
                ),
                const SizedBox(
                  height: 40,
                ),
                const DefaultTextField(
                  label: 'Email Address',
                ),
                const SizedBox(
                  height: 24,
                ),
                const DefaultTextField(
                  label: 'Password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Forgot My Password',
                  style:
                      smallText.copyWith(decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 40,
                ),
                const DefaultButton(text: 'Sign In'),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Create New Account',
                    style: mediumText.copyWith(
                        color: grayColor, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
