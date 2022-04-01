import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/src/pages/dependencies/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text("increase"),
          onPressed: () {
            print(Get.find<DependencyController>().hashCode);
            Get.find<DependencyController>().increase();
          },
        ),
      ),
    );
  }
}
