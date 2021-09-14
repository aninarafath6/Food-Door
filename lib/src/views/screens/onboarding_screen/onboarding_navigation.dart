import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/widgets/circle_button.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class OnboardingNavigation extends StatelessWidget with Dimensions {
  const OnboardingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.DEFAULT_PADDING,
        vertical: 20,
      ),

      // is last page ? then show the button to go to the login screen : else show the button to go to the next page
      child: context.watch<OnboardingProvider>().isLastPage
          // get started button
          ? TextButton(
              // button style
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: getWidth(context, 20),
                    vertical: 3,
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.primary),
              ),
              onPressed: () {},
              child: Text(
                'Get Started',
                // button text style
                style: _textStyle(color: Colors.white),
              ),
            )
          : Row(
              // row alignment
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // skip button
                GestureDetector(
                  onTap: () => context.read<OnboardingProvider>().skipPage(),
                  child: Text(
                    // text transforming into uppercase
                    'Skip'.toUpperCase(),
                    // applying text style
                    style: _textStyle(
                      color: AppColors.textGrey,
                    ),
                  ),
                ),
                // next button
                CircleButton(
                  text: 'Next',
                  size: 14,
                  fontWeight: FontWeight.w500,
                  background: AppColors.lightGreen,
                  onTap: () => context.read<OnboardingProvider>().nextPage(),
                ),
              ],
            ),
    );
  }

// text style
  _textStyle({
    Color? color,
    double? size,
    FontWeight? weight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.defaultBlack,
      fontSize: size ?? 15,
      fontWeight: weight ?? FontWeight.normal,
    );
  }
}
