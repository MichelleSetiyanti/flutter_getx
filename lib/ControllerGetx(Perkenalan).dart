import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  // int counter = 0;
  final testController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    print("Render");
    return Scaffold(
      appBar: AppBar(
        title: Text("GETX STATE MANAGEMENT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     // "$counter",
            //     "${testController.counter.value}",
            //     style: TextStyle(
            //       fontSize: 50,
            //     ),
            //   ),
            // ),
            Obx(() {
              print("TEXT");
              return Text(
                // "$counter",
                "${testController.counter.value}",
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // counter = counter - 1;
                    // print(counter);
                    testController.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    testController.increment();
                    // counter = counter + 1;
                    // print(counter);
                  },
                  child: Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CountController extends GetxController {
  var counter = 0.obs; // state yang akan selalu dipantau perubahaannnya
  increment() {
    counter = counter + 1;
  }

  decrement() => counter--;
}
