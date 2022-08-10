import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  // const CounterPage({Key? key}) : super(key: key)

  // final CounterC = Get.put(CounterController());
  CounterController CounterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text(
            //       "${CounterC.data}",
            //       style: TextStyle(
            //         fontSize: 50,
            //       ),
            //     )),
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (_) {
                return Text(
                  "${CounterC.data}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    CounterC.kurang();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    CounterC.tambah();
                  },
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
      ),
    );
  }
}
