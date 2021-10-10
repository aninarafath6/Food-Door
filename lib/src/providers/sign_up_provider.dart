import 'package:flutter/material.dart';
import 'package:food_door/src/models/user_model.dart';
import 'package:food_door/src/services/auth_services.dart';

// signUp provider
class SignUpProvider with ChangeNotifier {
  // username controller
  final TextEditingController userNameController = TextEditingController();
  // password controller
  final TextEditingController passwordController = TextEditingController();
  // email controller
  final TextEditingController emailController = TextEditingController();

  // remember me checkbox
  bool remember = true;

  bool loading = false;

  void updateLoading(bool status) {
    loading = status;
    notifyListeners();
  }

  List<String> errors = [];

  // on toggle remember me
  void toggleRemember(bool _remember) {
    remember = _remember;
  }

  // login
  void signUp() async {
    if (emailController.text != null &&
        userNameController.text != null &&
        passwordController.text != null) {
      if (passwordController.text.length >= 8) {
        updateLoading(true);
        bool response = await AuthServices().signUp(
          email: emailController.text,
          password: passwordController.text,
          username: userNameController.text,
        );
        updateLoading(false);
      } else {
        if (!errors.contains('password must be 8 charecters')) {
          errors.add('password must be 8 charecters');
        }
        notifyListeners();
      }
    } else {
      errors.add('please fill all inputs');
      notifyListeners();
    }
  }
}
