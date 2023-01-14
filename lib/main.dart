import 'package:flutter/material.dart';
import 'package:flutter_application_1/button1.dart';
import 'package:flutter_application_1/button2.dart';
import 'package:get/get.dart';
import 'button3.dart';
import 'button4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/page1', page: () => Button1()),
        GetPage(name: '/page2', page: () => Button2()),
        GetPage(name: '/page3', page: () => Button3()),
        GetPage(name: '/page4', page: () => Button4()),
      ],
      home: Scaffold(
          appBar: AppBar(
            title: Text('123'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: (() {
                          Get.toNamed('page1');
                        }),
                        child: Text('Name Change')),
                    OutlinedButton(
                        onPressed: (() {
                          Get.toNamed('page2');
                        }),
                        child: Text('Algoritm')),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: (() {
                          Get.toNamed('page3');
                        }),
                        child: Text('Apicall')),
                    OutlinedButton(
                        onPressed: (() {
                          Get.toNamed('page4');
                        }),
                        child: Text('Alert Dialog')),
                  ],
                )
              ],
            )),
          )),
    );
  }
}
