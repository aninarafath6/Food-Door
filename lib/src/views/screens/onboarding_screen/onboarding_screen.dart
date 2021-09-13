import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/onboarding_data_section.dart';
import 'package:provider/provider.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class OnboardingScreen extends StatelessWidget with Dimensions {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // safeArea using for ignore status bar
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // onboarding content section
            const OnboardingDataSection(),
            // page indication and action section
            SizedBox(
              // 30% of the screen height
              height: getHeight(context, 30),
              child: Column(
                // column alignment
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // page indication
                  Row(
                    //row alignment
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      context.read<OnboardingProvider>().dataLength,
                      // indicator
                      (index) => Consumer<OnboardingProvider>(
                        builder: (context,value,child)=>Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 2,
                          ),
                          height: 10,
                          width: 20,
                          decoration: BoxDecoration(
                            color: value.currentPage == index?AppColors.primaryColor:AppColors.lightGreyColor,
                            // radius for circular shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        
                      ),
                    ),
                  ),
                  Row(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
