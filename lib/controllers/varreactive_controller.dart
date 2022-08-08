import 'package:get/get.dart';

class VarreactiveController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "data".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  // RxSet<int> dataSet = {1, 2, 3}.obs;
  var dataSet = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "name": "Michelle",
    "umur": 18,
  }.obs;
  // RxMap<String,int> MyMap = {"Test":1}.obs;
  // RxList<dynamic> dataList = [1, 2, 3, "ss"].obs;
  int angkaSelanjutnya = 4;

  void gantiNama() {
    dataMap['name'] = "Adi";
  }

  void tambahList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void tambahSet() {
    dataSet.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahList() {
    dataList[0] = 9;
  }

  void ubahSet() {
    dataSet.value = {1, 2, 9};
  }

  void tambah() {
    dataInt++;
  }

  void kurang() {
    dataInt--;
  }

  void up() {
    dataString.value = "data (updated)";
  }

  void reset() {
    dataString.value = "data";
  }

  void doubleTmbh() {
    dataDouble.value++;
  }

  void doubleKrng() {
    dataDouble.value--;
  }

  void gantiBool() {
    // dataDouble.value++;
    // if (dataBool.value == true) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }

    // if (dataBool.isTrue) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }
    dataBool.toggle();
  }
}
