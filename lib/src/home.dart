import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/dependencies/dependency_manage_page.dart';
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
              }),
          ElevatedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                Get.toNamed("/first");
              }),
          ElevatedButton(
              child: Text("Arguments 전달"),
              onPressed: () {
                // Get.toNamed("/next", arguments: {"name": "zznggu", "age": 7});
                Get.toNamed("/next", arguments: User(name: '짱구', age: 7));
              }),
          ElevatedButton(
              child: Text("동적 url"),
              onPressed: () {
                Get.toNamed("/user/0987?name=짱구&age=7");
              }),
          ElevatedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.toNamed("/simpleState");
              }),
          ElevatedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.toNamed("/reactiveState");
              }),
          ElevatedButton(
              child: Text("의존성관리"),
              onPressed: () {
                Get.to(() => DependencyManagePage());
              }),
          ElevatedButton(
              child: Text("바인딩관리"),
              onPressed: () {
                Get.toNamed("/binding");
              }),
        ]),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}
