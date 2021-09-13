import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

// page indicator sild
class OnboardingPagingIndicator extends StatelessWidget with Dimensions {
  const OnboardingPagingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //row alignment
      mainAxisAlignment: MainAxisAlignment.center,
      // generated list of indicators for the slides
      children: List.generate(
        context.read<OnboardingProvider>().dataLength,
        // indicator
        (index) => Container(
          // margins
          margin: EdgeInsets.symmetric(
            horizontal: 2,
            vertical: getHeight(context, 3),
          ),
          height: 8,
          width: 20,
          decoration: BoxDecoration(
            // if the index is the same as the current slide, show a filled primary color
            color: context.watch<OnboardingProvider>().currentPage == index
                ? AppColors.primary
                : AppColors.lightGrey,
            // radius for circular shape
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
