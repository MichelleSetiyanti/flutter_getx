import 'package:flutter/cupertino.dart';
import 'package:flutter_getx/pages/route_page_3.dart';
import 'package:flutter_getx/pages/route_page_4.dart';
import 'package:flutter_getx/pages/route_page_5.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './pages/2_route.dart';
import './pages/route_page_1.dart';
import './pages/route_page_2.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final PageSatuC = Get.put(PageSatuController()); //mendaftarkan controller

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      // routes: {
      //   "home": (context) => HomePage(),
      //   "page_satu": (context) => PageSatu(),
      //   "page_dua": (context) => PageDua(),
      //   "page_tiga": (context) => PageTiga(),
      //   "page_empat": (context) => PageEmpat(),
      //   "page_lima": (context) => PageLima(),
      // },
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/page_satu", page: () => PageSatu()),
        GetPage(name: "/page_dua", page: () => PageDua()),
        GetPage(name: "/page_tiga", page: () => PageTiga()),
        GetPage(name: "/page_empat", page: () => PageEmpat()),
        GetPage(name: "/page_lima", page: () => PageLima()),
      ],
    );
  }
}
