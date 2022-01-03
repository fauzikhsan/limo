import 'package:get/get.dart';

class ProducController extends GetxController {
  var count = 0.obs;

  void increment() => count + 1;
  void decrement() => count - 1;
}
