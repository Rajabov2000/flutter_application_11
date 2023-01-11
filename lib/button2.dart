import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/controller.dart';
import 'package:get/get.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text("Clicks: ${c.count}")),
                Obx(() => Text("Clicks: ${c.count1}")),
                TextButton(
                    onPressed: () {
                      c.increment();
                      c.increment1();
                    },
                    child: Text("Click Me!!!")),
              ],
            )));
  }
}
