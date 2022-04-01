import 'package:get/instance_manager.dart';
import 'package:getx/src/controllers/count_controller.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CountController>(CountController());
  }
}
