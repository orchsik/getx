import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/dependencies/dependency_controller.dart';
import 'package:getx/src/pages/dependencies/get_lazyput.dart';
import 'package:getx/src/pages/dependencies/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              // 바로 인스턴스화
              child: Text("Get.put"),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put<DependencyController>(DependencyController());
                  }),
                );
              }),
          ElevatedButton(
              // 컨트롤러 사용시 인스턴스화
              child: Text("Get.lazyPut"),
              onPressed: () {
                Get.to(
                  () => GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              }),
          ElevatedButton(
              // 화면이동 후 비동기 컨트롤러 인스턴스화
              child: Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              }),
          ElevatedButton(
              // 항상 새로운 객체(싱글톤 X).
              child: Text("Get.create"),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(() {
                      return DependencyController();
                    });
                  }),
                );
              }),
        ],
      )),
    );
  }
}
