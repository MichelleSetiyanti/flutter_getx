import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/pages/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bindings"),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () {
          //   Get.to(
          //     () => CounterPage(),
          //     // binding: BindingsBuilder(
          //     //   () => Get.put(
          //     //     CounterController(),
          //     //   ),
          //     // ),
          //     binding: BindingsBuilder.put(() => CounterController()),
          //   );
          // },
          onPressed: () {
            Get.toNamed("/Counter");
          },
          child: Text("COUNTER PAGE >>"),
        ),
      ),
    );
  }
}
