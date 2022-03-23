import 'package:get/get.dart';
import 'package:mydoctor/controllers/home_page_controller.dart';
import 'package:mydoctor/controllers/main_page_controller.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainPageController());
    Get.put(HomePageController());
  }
}
