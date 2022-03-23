import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/routes/pages.dart';
import 'package:mydoctor/screens/pages/profile_page.dart';

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
      home: const ProfilePage(),
      getPages: Pages.pages,
    );
  }
}
