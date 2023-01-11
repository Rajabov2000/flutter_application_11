import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Button3 extends StatelessWidget {
  const Button3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button3'),
      ),
      body: Container(
          child: OutlinedButton(
              onPressed: () {
                Get.snackbar('SnackTitle', "Snack Message",
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Click Me!'))),
    );
  }
}
