import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/views/screens/login_screen/sections/action_section.dart';
import 'package:food_door/src/views/screens/login_screen/sections/input_action_section.dart';
import 'package:food_door/src/views/screens/login_screen/sections/app_bar_section.dart';
import 'package:food_door/src/views/screens/login_screen/sections/input_section.dart';
import 'package:food_door/src/views/screens/login_screen/sections/welcome_message_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar area
      appBar: loginAppBar(context),
      // content area
      body: Padding(
        // default padding
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        // wrap with scroll view
        child: SingleChildScrollView(
          // content area
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              // welcome message section
              WelcomeMessageSection(),
              // input section
              InputSection(),
              // input action section
              InputActionSection(),
              /// login actions
              ActionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
