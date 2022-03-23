import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isCanContinue = false.obs;

  void checkValid() {
    if (nameController.text != '' &&
        positionController.text != '' &&
        emailController.text != '' &&
        passwordController.text != '') {
      isCanContinue.value = true;
    } else {
      isCanContinue.value = false;
    }
  }
}
