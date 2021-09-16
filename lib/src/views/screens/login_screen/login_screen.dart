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
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Column(
          children: const <Widget>[
Spacer(),            // welcome message section
            WelcomeMessageSection(),
            // input section
            InputSection(),
Spacer(),            // welcome message section

            // input action section
            InputActionSection(),
Spacer(),            // welcome message section


            /// login actions
            ActionSection(),
Spacer(flex:3),            // welcome message section

          ],

        ),
      ),
    );
  }
}
