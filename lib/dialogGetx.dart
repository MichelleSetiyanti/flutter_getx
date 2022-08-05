import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/SnackbarGetx.dart';
import 'package:flutter_getx/StateManagementGetx.dart';
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
        title: Text("Dialog Getx"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDialog(
            //     context: context,
            //     builder: (context) => AlertDialog(
            //           title: Text("INI JUDUL"),
            //           content: Text("Isinya banyak"),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(18)),
            //         ));
            // Get.defaultDialog(
            //   title: "INI JUDUL",
            //   middleText: "Ini adalah isi dari judul",
            //   actions: [
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Cancel"),
            //     ),
            //     ElevatedButton(onPressed: () {}, child: Text("Simpan"))
            //   ],
            // );
            Get.dialog(AlertDialog(
              title: Text("INI JUDUL"),
              content: Text("Isinya banyak"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
            ));
          },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}
