import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/shared/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.srcOver),
                image: const AssetImage(
                  'assets/background.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 90,
                ),
                const SizedBox(
                  height: 90,
                ),
                Text(
                  'Konsultasi dengan\ndokter jadi lebih\nmudah & fleksibel',
                  style: largeText.copyWith(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultButton(
                      onTap: () {},
                      text: 'Get Started',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DefaultButton(
                      text: 'Sign In',
                      onTap: () => Get.toNamed('/home'),
                      backgroundColor: Colors.white,
                      textColor: primaryColor,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
