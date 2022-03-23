import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';
import 'package:mydoctor/shared/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const DefaultHeader(text: 'Daftar Akun'),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 130,
              height: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: lightGrayColor, width: 1),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/people.png'),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightRedColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.highlight_remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
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
            DefaultButton(onTap: () {}, text: 'Save Profile'),
          ],
        ),
      )),
    );
  }
}
