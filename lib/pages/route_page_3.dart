import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/route_page_4.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Tiga"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  // Get.to(PageEmpat());
                  Get.toNamed("/page_empat");
                },
                child: Text("Next >>"))
          ],
        ),
      ),
    );
  }
}
