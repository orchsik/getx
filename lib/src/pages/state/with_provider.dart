import 'package:flutter/material.dart';
import 'package:getx/src/controllers/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  Widget _button(BuildContext context) {
    return ElevatedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Provider.of<CountControllerWithProvider>(context, listen: false)
            .increase();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    CountControllerWithProvider _povider =
        Provider.of<CountControllerWithProvider>(context, listen: false);

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Provider", style: TextStyle(fontSize: 30)),
        Consumer<CountControllerWithProvider>(
            builder: (context, snapshot, child) {
          return Text(
            "${snapshot.count}",
            style: TextStyle(fontSize: 50),
          );
        }),
        ElevatedButton(
          child: Text("+", style: TextStyle(fontSize: 30)),
          onPressed: () {
            // Provider.of<CountControllerWithProvider>(context, listen: false)
            //     .increase();
            _povider.increase();
          },
        ),
        _button(context),
      ]),
    );
  }
}
