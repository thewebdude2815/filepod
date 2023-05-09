import 'package:get/get.dart';

class DashboardController extends GetxController implements GetxService {
  RxString currentPage = 'main'.obs;

  void changeDashboardPage(String name) {
    currentPage.value = name;
    update();
  }
}
