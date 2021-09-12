import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_images.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/onboarding_screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Dimensions _dimensions = Dimensions();

  @override
  void initState() {
    Timer(
        const Duration(milliseconds: 3000),
        () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const OnboardingScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      body: Stack(
        children: <Widget>[
          //background overlay image
          SizedBox(
            // taking the height of the screen
            height: _dimensions.getHeight(context, 100),
            child: Image.asset(
              AppImages.OVERLAY_IMAGE,
              // fit: BoxFit.cover,
              fit: BoxFit.fill,
            ),
          ),
          // food door logo
          Center(
            child: Image.asset(
              AppImages.LOGO,
              // taking the 20% of the screen height
              height: _dimensions.getHeight(
                context,
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
