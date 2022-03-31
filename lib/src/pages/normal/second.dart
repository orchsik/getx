import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                // [old]
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text("홈 이동"),
              onPressed: () {
                // [old]
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => Home()),
                //     (route) => false);
                Get.offAll(Home());
              },
            ),
          ],
        ),
      ),
    );
  }
}
