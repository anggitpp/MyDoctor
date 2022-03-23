import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/controllers/sign_in_page_controller.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_text_field.dart';
import 'package:mydoctor/shared/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInPageController>();
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
                DefaultTextField(
                  label: 'Email Address',
                  controller: controller.emailController,
                  onChanged: (value) => controller.checkValid(),
                ),
                const SizedBox(
                  height: 24,
                ),
                DefaultTextField(
                  label: 'Password',
                  controller: controller.passwordController,
                  onChanged: (value) => controller.checkValid(),
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
                Obx(
                  () => DefaultButton(
                    onTap: controller.isCanSignIn.value
                        ? () => Get.offAllNamed('/home')
                        : () {},
                    text: 'Sign In',
                    isActive: controller.isCanSignIn.value,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/signup'),
                  child: Center(
                    child: Text(
                      'Create New Account',
                      style: mediumText.copyWith(
                          color: grayColor,
                          decoration: TextDecoration.underline),
                    ),
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
