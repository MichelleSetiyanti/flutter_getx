import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/bindings/login_binding.dart';
import 'package:flutter_getx/pages/laoding.dart';
import './pages/login.dart';
import './pages/homegetstorage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'controllers/login_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final LoginC = Get.lazyPut(() => LoginController());
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LaodingPage(),
      // initialBinding: LoginBinding(),
      getPages: [
        GetPage(
          name: "/login",
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        )
      ],
    );
  }
}
