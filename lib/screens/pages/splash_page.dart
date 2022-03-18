import 'package:flutter/material.dart';
import 'package:mydoctor/shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 90,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'My Doctor',
              style: largeText,
            )
          ],
        ),
      ),
    );
  }
}
