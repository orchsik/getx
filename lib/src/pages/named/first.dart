import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.toNamed("/second");
                // Get.offNamed("/second"); // 현재페이지 없애고 다음으로 이동
              },
            ),
          ],
        ),
      ),
    );
  }
}
