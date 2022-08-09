import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/workers_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  final workersC = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers Getx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Terjadi perubahan : ${workersC.dataPantau} x",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (value) => workersC.change(),
              decoration: InputDecoration(
                labelText: "Data",
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
