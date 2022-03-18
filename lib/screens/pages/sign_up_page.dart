import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const DefaultHeader(text: 'Daftar Akun'),
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
            const DefaultButton(text: 'Continue'),
          ],
        ),
      )),
    );
  }
}
