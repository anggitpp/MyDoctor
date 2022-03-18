import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';
import 'package:mydoctor/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: primaryColor,
                    size: 24,
                  ),
                  Text(
                    'Daftar Akun',
                    style: largeText,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                children: const [
                  DefaultTextField(label: 'Full Name'),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(label: 'Pekerjaan'),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(label: 'Email Address'),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(
                    label: 'Password',
                    isPassword: true,
                  ),
                ],
              ),
            ),
            DefaultButton(text: 'Continue'),
          ],
        ),
      )),
    );
  }
}
