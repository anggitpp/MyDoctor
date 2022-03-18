import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/screens/pages/sign_in_page.dart';
import 'package:mydoctor/screens/pages/sign_up_page.dart';
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
    return const GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: UploadPhotoPage(),
    );
  }
}
