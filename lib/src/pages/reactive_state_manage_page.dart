import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/src/controllers/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountControllerWithReactive _controller =
        Get.put(CountControllerWithReactive());

    return Scaffold(
      appBar: AppBar(title: Text("반응형상태관리")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30)),
            // 아래 Obx랑 동일한 기능인데,, 안 되네..
            // GetX(builder: (_) {
            //   return Container(
            //     decoration: BoxDecoration(color: Colors.red),
            //     child: Text(
            //       "${Get.find<CountControllerWithReactive>().count.value}",
            //       style: TextStyle(fontSize: 50),
            //     ),
            //   );
            // }),
            Obx(() {
              return Text(
                // "${_controller.count}",
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(fontSize: 50),
              );
            }),
            ElevatedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
                // _controller.increase();
              },
            ),
            ElevatedButton(
              child: Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
