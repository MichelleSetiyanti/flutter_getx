import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM SHEET GETX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 250,
            //     color: Colors.white60,
            //     child: ListView(
            //       children: [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("Home"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.person),
            //           title: Text("Profil"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text("Settings"),
            //         ),
            //       ],
            //     ),
            //   ),
            // );
            Get.bottomSheet(
              Container(
                height: 250,
                color: Colors.white,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profil"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("OPEN BTM SHEET"),
        ),
      ),
    );
  }
}
