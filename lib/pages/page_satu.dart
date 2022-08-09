import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/page_satu_controller.dart';
import 'package:flutter_getx/pages/page_dua.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  // const PageSatu({Key? key}) : super(key: key);
  // PageSatuController PageSatuC = Get.find();

  // final PageSatuC = Get.put(PageSatuController()); //mendaftarkan controller
  final PageSatuC = Get.lazyPut(() =>
      PageSatuController()); // dia ga daftar dulu, ketika digunakan baru dia bikin
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   "${PageSatuC.data['name']} - ${PageSatuC.data['age']} Tahun",
          //   style: TextStyle(fontSize: 30),
          // ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageDua(),
                ),
              );
            },
            child: Text("Next >>"),
          ),
        ],
      )),
    );
  }
}
