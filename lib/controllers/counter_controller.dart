import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  // RxInt data = 0.obs;
  int data = 0;

  void tambah() {
    data++;
    update();
  }

  void kurang() {
    data--;
    update();
  }
}
