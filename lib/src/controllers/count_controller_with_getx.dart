import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  int count = 0;

  void increase(String id) {
    count++;
    // id배열을 넘기면 id에 해당하는 builder들만 update.
    update([id]);
  }

  void putNumber(int value) {
    count = 5;
    update(["first"]);
  }
}
