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
    );
  }
}
