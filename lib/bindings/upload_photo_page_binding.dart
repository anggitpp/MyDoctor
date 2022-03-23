import 'package:get/get.dart';
import 'package:mydoctor/controllers/upload_photo_page_controller.dart';

class UploadPhotoPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UploadPhotoPageController());
  }
}
