import 'package:flutter/material.dart';
import 'package:flutter_getx/bindings/counter_binding.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:flutter_getx/controllers/login_controller.dart';
import 'package:flutter_getx/pages/counter.dart';
import 'package:get/get.dart';
import './pages/bindings-1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      // CARA AGAR TIDAK MEMBUAT BANYAK ROUTING DALAM BINDINGS

      getPages: [
        GetPage(
          name: "/Counter",
          page: () => CounterPage(),
          binding: CounterBindings(),
          // binding: BindingsBuilder.put(
          //   () => CounterController(),
          // ),
          // bindings: [
          //   BindingsBuilder.put(
          //       () => CounterController()), // Ini Bisa lebih dari 1 ya gais ya
          // ],
        ),
      ],
    );
  }
}
