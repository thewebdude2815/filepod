import 'package:get/get.dart';

class SettingsController extends GetxController implements GetxService {
  RxString currentPage = 'webDav'.obs;

  void changeSettingsPage(String name) {
    currentPage.value = name;
    update();
  }
}
