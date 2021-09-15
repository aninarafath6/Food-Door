import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/views/screens/login_screen/sections/app_bar_section.dart';
import 'package:food_door/src/views/screens/login_screen/sections/welcome_message_section.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar area
      appBar: loginAppBar(context),
      // content area
      body: Padding(
        // default padding
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.DEFAULT_PADDING),
        // wrap with scroll view
        child: SingleChildScrollView(
          // content area
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              WelcomeMessageSection(),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _textStyle(BuildContext context,
      {double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      color: AppColors.defaultBlack,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
