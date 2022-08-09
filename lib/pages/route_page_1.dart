import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        leading: SizedBox(),
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Satu"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
