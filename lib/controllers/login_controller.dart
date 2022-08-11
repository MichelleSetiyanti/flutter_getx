import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "a@gmail.com" && passC.text == "admin") {
      if (box.read("dataRememberme") != null) {
        box.remove("dataRememberme");
      }

      if (rememberMe.isTrue) {
        //simpan data di local memory hp
        box.write("dataRememberme", {
          "email": emailC.text,
          "pass": passC.text,
        });
      }

      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Salah",
        middleText: "Email dan Pass tidak sinkron",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
