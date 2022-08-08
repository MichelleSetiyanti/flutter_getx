// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/varreactive_controller.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  final VarreactC = Get.put(VarreactiveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipe data RX"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataInt}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.kurang();
                    },
                    child: Text("-"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.tambah();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataString}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.up();
                    },
                    child: Text("Update"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.reset();
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataDouble}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.doubleKrng();
                    },
                    child: Text("-"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.doubleTmbh();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataBool}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.gantiBool();
                    },
                    child: Text("Ganti Bool"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataList}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.tambahList();
                    },
                    child: Text("tambah"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.ubahList();
                    },
                    child: Text("ubah"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  "${VarreactC.dataSet}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.tambahSet();
                    },
                    child: Text("tambah"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      VarreactC.ubahSet();
                    },
                    child: Text("ubah"),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${VarreactC.dataMap['id']}"),
                    ),
                    title: Text("${VarreactC.dataMap['name']}"),
                    subtitle: Text("${VarreactC.dataMap['umur']} Tahun"),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    VarreactC.gantiNama();
                  },
                  child: Text("Ganti"))
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Obx(() {
          //       return ListTile(
          //         title: Text("${VarreactC.dataMap}"),
          //       );
          //       // return Text(
          //       //   "${VarreactC.dataMap}",
          //       //   style: TextStyle(fontSize: 20),
          //       // );
          //     }),
          //     Row(
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             VarreactC.tambahSet();
          //           },
          //           child: Text("tambah"),
          //         ),
          //         SizedBox(
          //           width: 20,
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             VarreactC.ubahSet();
          //           },
          //           child: Text("ubah"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
