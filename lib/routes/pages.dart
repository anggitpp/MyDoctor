import 'package:get/get.dart';
import 'package:mydoctor/bindings/home_page_binding.dart';
import 'package:mydoctor/routes/route_name.dart';
import 'package:mydoctor/screens/pages/home_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      binding: HomePageBinding(),
      page: () => const HomePage(),
    ),
  ];
}
