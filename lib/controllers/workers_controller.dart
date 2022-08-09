import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() {
    dataPantau = dataPantau + 1;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    // ever(dataPantau, (data) => print("Perubahan")); // tiap ada onchange maka kehitung
    // once(dataPantau, (data) => print("cuma 1x perubahan")); // hanya 1 kali saja
    // debounce(
    //   dataPantau,
    //   (data) => print("cuma pantau 2 detik"),
    //   time: Duration(seconds: 2),
    // ); // dia punya interval
    // super.onInit();

    interval(
      dataPantau,
      (data) => print("cuma pantau 2 detik"),
      time: Duration(seconds: 2),
    ); // dia punya interval
    super.onInit();
  }
}
