import 'package:flutter/cupertino.dart';
// import 'package:flutter_getx/bottomsheetGetx.dart';
import 'package:get/get.dart';
import './pages/page_satu.dart';
import './controllers/page_satu_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final PageSatuC = Get.put(PageSatuController()); //mendaftarkan controller

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
    );
  }
}
