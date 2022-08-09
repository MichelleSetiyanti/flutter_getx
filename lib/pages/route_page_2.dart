import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/route_page_3.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Dua"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.to(PageTiga());
                },
                child: Text("Next >>"))
          ],
        ),
      ),
    );
  }
}
