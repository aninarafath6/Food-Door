import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class OnboardingDataSection extends StatelessWidget with Dimensions {
  const OnboardingDataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // page view for onboarding
      child: PageView.builder(
        //  controller
        controller: context.read<OnboardingProvider>().pageController,

        // on page changed
        onPageChanged:
            context.read<OnboardingProvider>().changePage,

        // get onboard data length
        itemCount: context.read<OnboardingProvider>().dataLength,

        // get onboard data
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(AppSizes.DEFAULT_PADDING),
            child: Column(
              // main axis aligned into center
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // onboarding image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    context
                        .read<OnboardingProvider>()
                        .onboardingData[index]
                        .image!,
                    // takeing image width and height from dimensions
                    height: getHeight(context, 30),
                  ),
                ),
                spacing(context, height: 5),
                // onboarding title
                Text(
                  context
                      .read<OnboardingProvider>()
                      .onboardingData[index]
                      .title!,
                  style: _textStyle(
                    context,
                    size: 2.7,
                    weight: FontWeight.w500,
                  ),
                ),
                spacing(context, height: 3),
                Padding(
                  padding: EdgeInsets.symmetric(
                    // giving padding to text from left and right side as 3% of screen width
                    horizontal: getWidth(
                      context,
                      0,
                    ),
                  ),
                  // onboarding description
                  child: Text(
                    context
                        .read<OnboardingProvider>()
                        .onboardingData[index]
                        .description!,
                    textAlign: TextAlign.center,
                    style: _textStyle(
                      context,
                      size: 2,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // text style
  _textStyle(BuildContext context,
          {double? size = 1, FontWeight? weight = FontWeight.normal}) =>
      GoogleFonts.poppins(
        fontSize: getHeight(context, size),
        fontWeight: weight,
        color: AppColors.defaultBlack,
      );
}
