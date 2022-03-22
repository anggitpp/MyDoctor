import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/routes/pages.dart';
import 'package:mydoctor/screens/pages/chatting_page.dart';
import 'package:mydoctor/screens/pages/home_page.dart';
import 'package:mydoctor/screens/pages/list_doctor_page.dart';
import 'package:mydoctor/screens/pages/upload_photo_page.dart';
import 'package:mydoctor/screens/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: const ChattingPage(),
      getPages: Pages.pages,
    );
  }
}
