import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/views/screens/sign_up_screen/sections/sign_up_action_setion.dart';
import 'package:food_door/src/views/screens/sign_up_screen/sections/sign_up_app_bar_section.dart';
import 'package:food_door/src/views/screens/sign_up_screen/sections/sign_up_input_section.dart';
import 'package:food_door/src/views/screens/sign_up_screen/sections/sign_up_welcome_message_section.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String routeName = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar area
      appBar: signUpAppBar(context),
      // content area
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Spacer(flex:1), // welcome message section
                  SignUpWelcomeMessageSection(),
                  Spacer(),
                  SignUpInputSection(),
                  Spacer(), // welcome message section
                  /// login actions
                  SignUpActionSection(),
                  Spacer(flex: 2),
                  // Spacer(),
                  // input section
                  // welcome message section
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
