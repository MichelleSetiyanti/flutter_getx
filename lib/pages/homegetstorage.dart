import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/login_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginC.logout();
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
