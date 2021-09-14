import 'package:flutter/material.dart';
import 'package:food_door/src/views/screens/login_screen/sections/app_bar_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar area
      appBar: loginAppBar(context),
    );
  }

}
