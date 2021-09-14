import 'package:flutter/material.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/sections/onboarding_action_section.dart';
import 'package:food_door/src/views/screens/onboarding_screen/sections/onboarding_data_section.dart';
// ignore: implementation_imports

class OnboardingScreen extends StatelessWidget with Dimensions {
  OnboardingScreen({Key? key}) : super(key: key);
  // route name
  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    print('onbaording reabuld');
    return Scaffold(
      // safeArea using for ignore status bar
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            // onboarding content section
            OnboardingDataSection(),
            // page indication and action section
            OnboardingActionSection(),
          ],
        ),
      ),
    );
  }
}
