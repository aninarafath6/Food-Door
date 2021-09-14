import 'package:flutter/material.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/sections/onboarding_navigation.dart';
import 'package:food_door/src/views/screens/onboarding_screen/sections/onboarding_paging_indicator.dart';

class OnboardingActionSection extends StatelessWidget with Dimensions {
  const OnboardingActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=====onboarding action section build=====');
    return SizedBox(
      // 30% of the screen height
      height: getHeight(context, 30),
      child: Column(
        // column alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          // page indication
          OnboardingPagingIndicator(),
          // page navigation buttons
          OnboardingNavigation(),
        ],
      ),
    );
  }
}
