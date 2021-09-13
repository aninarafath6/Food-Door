import 'package:flutter/material.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/font_style.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class OnboardingScreen extends StatelessWidget with Dimensions {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _onboardingProvider = Provider.of<OnboardingProvider>(context);

    return Scaffold(
      // safeArea using for ignore status bar
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              // page view for onboarding
              child: PageView.builder(
                // get onboard data length
                itemCount: _onboardingProvider.dataLength,
                // get onboard data
                itemBuilder: (context, index) {
                  return Column(
                    // main axis aligned into center
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // onboarding image
                      Image.asset(
                        _onboardingProvider.onboardingData[index].image!,
                        // takeing image width and height from dimensions
                        height: getHeight(context, 30),
                      ),
                      spacing(context, height: 2),
                      Text(
                        _onboardingProvider.onboardingData[index].title!,
                        style: OnboardingFontStyle().textStyle(
                          context,
                          size: 2.7,
                          weight: FontWeight.w500,
                        ),
                      ),
                      spacing(context, height: 2),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          // giving padding to text from left and right side as 3% of screen width
                          horizontal: getWidth(
                            context,
                            3,
                          ),
                        ),
                        child: Text(
                          _onboardingProvider
                              .onboardingData[index].description!,
                          textAlign: TextAlign.center,
                          style: OnboardingFontStyle().textStyle(
                            context,
                            size: 1.7,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // page indication and action section
            Container(
              // color: Colors.green,
              height: getHeight(context, 40),
            )
          ],
        ),
      ),
    );
  }
}
