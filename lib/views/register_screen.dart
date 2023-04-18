import 'package:camerket/controllers/register_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final regController = Get.put(RegisterController());
  final RegisterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: regController.nameTxt,
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            TextField(
              controller: regController.emailTxt,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextField(
              controller: regController.mobileTxt,
              decoration: InputDecoration(
                hintText: "Mobile",
              ),
            ),
            TextField(
              controller: regController.passwordTxt,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  regController.postMethod();
                },
                child: const Text("Register")),
          ],
        ),
      ),
    );
  }
}
