import 'package:flutter/material.dart';
import './page_satu.dart';
import '../controllers/page_satu_controller.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  // final PageSatuC = Get.put(PageSatuController());
  PageSatuController PageSatuC = Get.find(); // biar gausah dua kali daftar

  // final PageSatuC = Get.put(PageSatuController()); //mendaftarkan controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${PageSatuC.data2['name']} - ${PageSatuC.data2['age']} Tahun",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Next >>"),
          // ),
        ],
      )),
    );
  }
}
