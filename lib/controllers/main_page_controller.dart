import 'package:get/get.dart';

class MainPageController extends GetxController {
  RxInt currentIndex = 0.obs;

  void onTapBottomNavigationBar(index) {
    currentIndex.value = index;
  }
}
