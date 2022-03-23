import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/controllers/main_page_controller.dart';
import 'package:mydoctor/screens/pages/home_page.dart';
import 'package:mydoctor/screens/pages/hospital_page.dart';
import 'package:mydoctor/screens/pages/message_page.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainPageController>();
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      backgroundColor: Colors.white,
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomePage(),
            MessagePage(),
            HospitalPage(),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    final controller = Get.find<MainPageController>();

    return Container(
      padding: EdgeInsets.only(top: 16),
      height: 102,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.onTapBottomNavigationBar(index),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedLabelStyle: smallText.copyWith(color: secondaryColor),
            unselectedLabelStyle: smallText.copyWith(color: secondaryColor),
            selectedItemColor: secondaryColor,
            unselectedItemColor: '#495A75'.toColor(),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_hospital,
                ),
                label: 'Hospitals',
              ),
            ],
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
