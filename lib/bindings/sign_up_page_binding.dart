import 'package:get/get.dart';
import 'package:mydoctor/controllers/sign_up_page_controller.dart';

class SignUpPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignUpPageController());
  }
}
