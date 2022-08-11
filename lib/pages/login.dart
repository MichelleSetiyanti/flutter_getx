import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController loginC = Get.find();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberme") != null) {
      loginC.rememberMe.value = true;
      loginC.emailC.text = box.read("dataRememberme")["email"];
      loginC.passC.text = box.read("dataRememberme")["pass"];
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: Text("Email"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              obscureText: loginC.isHidden.value,
              decoration: InputDecoration(
                label: Text("Password"),
                suffixIcon: IconButton(
                    onPressed: () => loginC.isHidden.toggle(),
                    icon: Icon(Icons.remove_red_eye)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.rememberMe.value,
              title: Text("Remember Me"),
              onChanged: (value) {
                loginC.rememberMe.toggle();
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: Text("LOGIN"),
          ),
        ],
      ),
    );
  }
}
