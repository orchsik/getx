import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/src/controllers/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  // 여기서 Get.put 하면 해당 클래스 어디서나 controller 사용 편리함.
  // 사용할 곳에서 매번 Get.find 하지 않아도 됌.
  final CountControllerWithGetX _controller =
      Get.put(CountControllerWithGetX());

  @override
  Widget build(BuildContext context) {
    // GetX의 controller를 사용하면 context를 인자로 넘기지 않아도 가능.
    Widget _button(String id) {
      return ElevatedButton(
        child: Text("+", style: TextStyle(fontSize: 30)),
        onPressed: () {
          _controller.increase(id);
        },
      );
    }

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("GetX", style: TextStyle(fontSize: 30)),
        GetBuilder<CountControllerWithGetX>(
            // GetBuilder에 id를 주면 id값의 builder(컴포넌트)만 update 가능.
            id: "first",
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            }),
        GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            }),
        ElevatedButton(
          child: Text("+", style: TextStyle(fontSize: 30)),
          onPressed: () {
            // Get.find<CountControllerWithGetX>().increase();
            _controller.increase("first");
          },
        ),
        _button("second"),
      ]),
    );
  }
}
