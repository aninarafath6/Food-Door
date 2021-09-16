import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_images.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/utils/navigation.dart';
import 'package:food_door/src/views/screens/onboarding_screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  // route name
  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // redirecting to onboarding screen after 3 seconds
    Timer(
      const Duration(milliseconds: 3000),
      () => context.toPushNamedReplacement(
        OnboardingScreen.routeName,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // setting status bar color to transparent
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: <Widget>[
          //background overlay image
          SizedBox(
            // taking the height of the screen
            height: context.getHeight(100),
            child: Image.asset(
              AppImages.overlayImage,
              // fit: BoxFit.cover,
              fit: BoxFit.fill,
            ),
          ),
          // food door logo
          Center(
            child: Image.asset(
              AppImages.logo,
              // taking the 20% of the screen height
              height: context.getHeight(
                20,
              ),
            ),
          ),
          // bottom welcome message
          Container(
            // some margin
            margin: const EdgeInsets.only(bottom: 10),
            // align to bottom center
            alignment: Alignment.bottomCenter,
            child: Text(
              'Welcome To Food Door',
              // here using google poppins font with 600
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
