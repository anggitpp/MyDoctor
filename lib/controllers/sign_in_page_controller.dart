import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isCanSignIn = false.obs;

  void checkValid() {
    if (emailController.text != '' && passwordController.text != '') {
      isCanSignIn.value = true;
    } else {
      isCanSignIn.value = false;
    }
  }
}
