import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                // [OLD]
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.to(FirstPage());
              })
        ]),
      ),
    );
  }
}
