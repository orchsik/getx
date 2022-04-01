import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/src/pages/dependencies/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
          child: Text("increase"),
          onPressed: () {
            Get.find<DependencyController>().increase();
          }),
    );
  }
}
