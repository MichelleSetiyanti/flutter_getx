import 'package:flutter/cupertino.dart';
// import 'package:flutter_getx/bottomsheetGetx.dart';
import 'package:get/get.dart';
import './pages/reactiveVariable.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
