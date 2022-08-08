import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () {
            //     return Text(
            //       "${homeC.dataPantau}",
            //       style: TextStyle(
            //         fontSize: 30,
            //       ),
            //     );
            //   },
            // ),
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              child: Text("Tambah Data"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.refreshData();
              },
              child: Text("Refresh Tampilan"),
            ),
          ],
        ),
      ),
    );
  }
}
