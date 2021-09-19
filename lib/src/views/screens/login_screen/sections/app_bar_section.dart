
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
        ),
      ),
      // title of the app bar
      title:const  Text(
        'Sign In',
     
      ),
    );
  }