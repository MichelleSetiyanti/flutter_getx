import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.put(CounterController()); //jika ada dua ya pasang 2
    Get.lazyPut(() => CounterController());
  }
}
