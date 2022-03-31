import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/normal/second.dart';

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
                Get.to(SecondPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
