import 'dart:convert';

import 'package:camerket/models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController mobileTxt = TextEditingController();
  TextEditingController nameTxt = TextEditingController();
  TextEditingController passwordTxt = TextEditingController();

  void postMethod() async {
    try {
      // Define the request body using the RegisterRequest model class
      final registerRequest = RegisterRequest(
        email: emailTxt.text,
        mobile: mobileTxt.text,
        name: nameTxt.text,
        password: passwordTxt.text,
      );
      final String requestJson = jsonEncode(registerRequest.toJson());

      // Send the POST request
      final response = await http.post(
        Uri.parse("https://dev.lenzcamera.com/api/api/v2/Customer/Register"),
        headers: {"Content-Type": "application/json"},
        body: requestJson,
      );

      // Handle the response using the RegisterResponse model class
      if (response.statusCode == 200) {
        final registerResponse =
            RegisterResponse.fromJson(jsonDecode(response.body));

        print(registerResponse.message);
        print(response.body);
      } else {}
    } catch (error) {
      print("Request failed with error: $error['message']");
      print(error);
    }
  }
}
