import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? email;
  String? password;

  void setUserCredentials(String userEmail, String userPassword) {
    email = userEmail;
    password = userPassword;
    notifyListeners();
  }
}
