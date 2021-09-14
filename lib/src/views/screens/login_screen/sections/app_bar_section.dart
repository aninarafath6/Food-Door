
  import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/utils/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar loginAppBar(BuildContext context) {
    return AppBar(
      // leading button : back button on the left side of the app bar
      leading: IconButton(
        // pop navigation to the previous screen
        onPressed: () {
          // go to back screen
          context.pop();
        },
        // splash radius
        splashRadius: 25,
        icon: const Icon(
          // arrow back ios icon
          Icons.arrow_back_ios,
          // icon button color into black
          color: AppColors.defaultBlack,
        ),
      ),
      // removed the background color of the app bar
      backgroundColor: Colors.transparent,
      // removed app bar elevation shadow
      elevation: 0,
      // aligned the title of the app bar to the center
      centerTitle: true,
      // title of the app bar
      title: Text(
        'Sign In',
        style: GoogleFonts.poppins(
          color: AppColors.defaultBlack,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }