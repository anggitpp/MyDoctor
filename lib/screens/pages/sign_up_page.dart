import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/controllers/sign_up_page_controller.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpPageController>();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const DefaultHeader(text: 'Daftar Akun'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 40),
              child: Column(
                children: [
                  DefaultTextField(
                    label: 'Full Name',
                    controller: controller.nameController,
                    onChanged: (data) => controller.checkValid(),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(
                    label: 'Pekerjaan',
                    controller: controller.positionController,
                    onChanged: (data) => controller.checkValid(),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(
                    label: 'Email Address',
                    controller: controller.emailController,
                    onChanged: (data) => controller.checkValid(),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextField(
                    label: 'Password',
                    isPassword: true,
                    controller: controller.passwordController,
                    onChanged: (data) => controller.checkValid(),
                  ),
                ],
              ),
            ),
            Obx(
              () => DefaultButton(
                onTap: controller.isCanContinue.value
                    ? () => Get.toNamed('/uploadPhoto')
                    : () {},
                text: 'Continue',
                isActive: controller.isCanContinue.value,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
