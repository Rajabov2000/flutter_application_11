import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var count1 = 2.obs;
  increment() => count++;
  increment1() => count1--;
}

class Student {
  var name = 'Jonatas Borges'.obs;
  var name1 = 'Sardor'.obs;
}
