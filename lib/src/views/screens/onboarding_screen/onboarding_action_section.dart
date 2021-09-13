import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/onboarding_paging_indicator.dart';
import 'package:food_door/src/views/widgets/circle_button.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class OnboardingActionSection extends StatelessWidget with Dimensions {
  const OnboardingActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 30% of the screen height
      height: getHeight(context, 30),
      child: Column(
        // column alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // page indication
          const OnboardingPagingIndicator(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.DEFAULT_PADDING,
              vertical: 20,
            ),
            child: context.watch<OnboardingProvider>().isLastPage
                ?   TextButton(
                    onPressed: () {},
                    child: const Text('Get Started'),
                  ):
              Row(
                    // row alignment
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // skip button
                      GestureDetector(
                        onTap: () =>
                            context.read<OnboardingProvider>().skipPage(),
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
                        onTap: () =>
                            context.read<OnboardingProvider>().nextPage(),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

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
