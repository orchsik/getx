import 'package:get/get.dart';

class CountController extends GetxController {
  static CountController get to => Get.find();

  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  void putNumber(int value) {
    count(5);
  }
}
