import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home.dart';
import 'package:getx/src/pages/named/first.dart';
import 'package:getx/src/pages/named/second.dart';
import 'package:getx/src/pages/next.dart';
import 'package:getx/src/pages/reactive_state_manage_page.dart';
import 'package:getx/src/pages/simple_state_manage_page.dart';
import 'package:getx/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/first",
          page: () => FirstNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/second",
          page: () => SecondNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/next",
          page: () => NextPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/user/:uid",
          page: () => UserPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/simpleState",
          page: () => SimpleStateManagePage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/reactiveState",
          page: () => ReactiveStateManagePage(),
          transition: Transition.zoom,
        ),
      ],
    );
  }
}
