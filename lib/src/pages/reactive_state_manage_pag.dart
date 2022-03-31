import 'package:flutter/material.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("반응형상태관리")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30)),
            Text(
              "0",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                // _controller.increase(id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
