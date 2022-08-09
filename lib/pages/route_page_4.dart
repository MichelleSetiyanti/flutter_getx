import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/route_page_5.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Empat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Empat"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.to(PageLima());
                },
                child: Text("Next >>"))
          ],
        ),
      ),
    );
  }
}
