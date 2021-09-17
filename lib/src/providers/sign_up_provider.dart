import 'package:flutter/material.dart';

// signUp provider
class SignUpProvider with ChangeNotifier {
  // username controller
  final TextEditingController userNameController = TextEditingController();
  // password controller
  final TextEditingController passwordController = TextEditingController();
  // email controller
  final TextEditingController emailController = TextEditingController();

  // remember me checkbox
  bool remember = false;

  // on toggle remember me
  void toggleRemember(bool _remember) {
    remember = _remember;
  }

  // login
  void signUp() {
    print(userNameController.text);
    print(passwordController.text);
    print(emailController.text);
  }
}
