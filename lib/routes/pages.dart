import 'package:get/get.dart';
import 'package:mydoctor/bindings/home_page_binding.dart';
import 'package:mydoctor/bindings/main_page_binding.dart';
import 'package:mydoctor/bindings/sign_in_page_binding.dart';
import 'package:mydoctor/bindings/sign_up_page_binding.dart';
import 'package:mydoctor/bindings/upload_photo_page_binding.dart';
import 'package:mydoctor/routes/route_name.dart';
import 'package:mydoctor/screens/pages/home_page.dart';
import 'package:mydoctor/screens/pages/main_page.dart';
import 'package:mydoctor/screens/pages/sign_in_page.dart';
import 'package:mydoctor/screens/pages/sign_up_page.dart';
import 'package:mydoctor/screens/pages/upload_photo_page.dart';
import 'package:mydoctor/screens/pages/welcome_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: RouteName.welcome,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: RouteName.signup,
      binding: SignUpPageBinding(),
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: RouteName.uploadPhoto,
      binding: UploadPhotoPageBinding(),
      page: () => const UploadPhotoPage(),
    ),
    GetPage(
      name: RouteName.signin,
      binding: SignInPageBinding(),
      page: () => const SignInPage(),
    ),
    GetPage(
      name: RouteName.main,
      binding: MainPageBinding(),
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteName.home,
      binding: HomePageBinding(),
      page: () => const HomePage(),
    ),
  ];
}
