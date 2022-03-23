import 'package:get/get.dart';
import 'package:mydoctor/controllers/sign_in_page_controller.dart';

class SignInPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignInPageController());
  }
}
