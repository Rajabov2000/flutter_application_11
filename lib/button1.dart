import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/controller.dart';
import 'package:flutter_application_1/controller/value/value.dart';
import 'package:get/get.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    var student = Student();
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("${student.name.value}")),
              TextButton(
                  onPressed: () {
                    student.name.value = student.name1.value;
                  },
                  child: Text("Click Me!!!"))
            ],
          )),
    );
  }
}
