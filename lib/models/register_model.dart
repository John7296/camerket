import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterRequest {
  String email;
  String mobile;
  String name;
  String password;

  RegisterRequest({
    required this.email,
    required this.mobile,
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'mobile': mobile,
        'name': name,
        'password': password,
      };
}

class RegisterResponse {
  String message;
  RegisterData data;

  RegisterResponse({
    required this.message,
    required this.data,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      message: json['Message'],
      data: RegisterData.fromJson(json['Data']),
    );
  }
}

class RegisterData {
  int custId;
  String otpUrlKey;
  String custName;
  String phoneNo;
  String emailId;

  RegisterData({
    required this.custId,
    required this.otpUrlKey,
    required this.custName,
    required this.phoneNo,
    required this.emailId,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) {
    return RegisterData(
      custId: json['custId'],
      otpUrlKey: json['otpUrlKey'],
      custName: json['custName'],
      phoneNo: json['phoneNo'],
      emailId: json['emailId'],
    );
  }
}
