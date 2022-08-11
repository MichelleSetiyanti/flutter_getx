import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaodingPage extends StatelessWidget {
  const LaodingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laoding Bar"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Get.toNamed("/login"),
                child: Text("Login Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
