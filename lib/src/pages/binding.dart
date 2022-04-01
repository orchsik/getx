import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/src/controllers/count_controller.dart';

class BindingPage extends GetView<CountController> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<CountController>(
            //     builder: (_) {
            //       return Text(
            //         _.count.toString(),
            //         style: TextStyle(fontSize: 50),
            //       );
            //     }),
            Obx(() => Text(
                  controller.count.toString(),
                  style: TextStyle(fontSize: 50),
                )),
            ElevatedButton(
                onPressed: () {
                  // Get.find<CountController>().increase();
                  // CountController.to.increase();
                  controller.increase();
                },
                child: Text("+"))
          ],
        ),
      ),
    );
  }
}
