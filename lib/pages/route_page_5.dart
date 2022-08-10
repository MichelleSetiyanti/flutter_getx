import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/route_page_3.dart';
import 'package:flutter_getx/pages/route_page_2.dart';
import 'package:flutter_getx/pages/route_page_1.dart';
import './1_route.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  const PageLima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Lima"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Lima"),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.offAllNamed("/home");
                // Get.offAll(
                // HomePage()); // back langsung ke home hanya ada di dalam routing
                // kek langsung aja gitu ya
                // Get.back(HomePage()); // back langsung ke page 4
              },
              child: Text("back to home"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.offAllNamed("/page_satu");
                // Get.offAll(PageSatu());
              },
              child: Text("back to Page 1(Push Replacement)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.offAllNamed("/page_dua");
                // Get.offAll(PageDua());
              },
              child: Text("back to Page 2 (PUSH REPLACEMENT)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.offAllNamed("/page_tiga");
                // Get.offAll(PageTiga());
              },
              child: Text("back to Page 3 (PUSH REPLACEMENT)"),
            ),
          ],
        ),
      ),
    );
  }
}
