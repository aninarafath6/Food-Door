import 'package:flutter/material.dart';

// login provider
class LoginProvider with ChangeNotifier {
  // username controller
  final TextEditingController userNameController = TextEditingController();
  // password controller
  final TextEditingController passwordController = TextEditingController();
  // remember me checkbox
  bool remember = false;



  // on toggle remember me
  void toggleRemember(bool _remember) {
    remember = _remember;
  }
  // login
   void login(){
    print(userNameController.text);
    print(passwordController.text);
  }
}
