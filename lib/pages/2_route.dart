import 'package:flutter/material.dart';
import './route_page_1.dart';
import './route_page_2.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => PageSatu(),
              // )); // ini bakal ada tombol back (pake .push) // kalau (pake .pushreplacement) gada tombol back

              //INI KALAU PAKE NAMED ROUTE DIAWAL
              Navigator.of(context).pushNamed("/page_satu");
            },
            child: Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              // Get.off(PageDua()); //tidak ada tombol back

              // Get.to(PageDua()); //ada tombol back
              // Navigator.of(context).pushNamed("page_dua");
              Get.toNamed("/page_dua");
            },
            child: Text("Page 2"),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Page 3"),
          // ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Page 4"),
          // ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Page 5"),
          // ),
        ],
      ),
    );
  }
}
