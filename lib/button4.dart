import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Button4 extends StatelessWidget {
  const Button4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Container(
        child: OutlinedButton(
          child: Text('Click Me!'),
          onPressed: () {
            Get.defaultDialog(
              title: "Hello",
              middleText: "Hello world!",
              backgroundColor: Colors.green,
              titleStyle: TextStyle(color: Colors.white),
              middleTextStyle: TextStyle(color: Colors.white),
            );
          },
        ),
      ),
    );
  }
}
