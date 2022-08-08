import 'package:get/get.dart';

class HomeController extends GetxController {
  //variabel ini biar bsa selallu dipantau setiap kali perubahan perubahannya
  // var dataPantau = 0.obs; // ini buat reactive state manager
  int dataPantau = 0; // ini buat yang simple state maneger
  void tambahData() {
    dataPantau++; // ini obs tanpa perlu update (Ini Reactive)
    if (dataPantau % 5 == 0) {
      update();
    }
    // update(); // ini wajib ketrika simple state manager (Ini untuk getBuilder)
  }

  void refreshData() {
    update();
  }
}
