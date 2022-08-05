import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SNACKBAR GETX"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text("Anyeong"),
            //     action: SnackBarAction(
            //       label: "CANCEL",
            //       onPressed: () {},
            //     ),
            //   ),
            // );
            Get.snackbar(
              "Hallo",
              "Nama Saya Michelle",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.yellow,
              barBlur: 1,
            );
          },
          child: Text("SNACKBAR"),
        ),
      ),
    );
  }
}
